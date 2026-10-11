package com.redcastlemedia.proxismwo.controllers;

import com.redcastlemedia.proxismwo.api.LoginRequest;
import com.redcastlemedia.proxismwo.commands.CreateUserCommand;
import com.redcastlemedia.proxismwo.events.UserCreatedEvent;
import com.redcastlemedia.proxismwo.models.User;
import com.redcastlemedia.proxismwo.services.UserService;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import org.axonframework.commandhandling.gateway.CommandGateway;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ProblemDetail;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.context.HttpSessionSecurityContextRepository;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.UUID;

@RestController
public class UserController {

    private final CommandGateway commandGateway;
    private final PasswordEncoder passwordEncoder;
    private final UserService userService;
    private final AuthenticationManager authenticationManager;

    @Autowired
    public UserController(CommandGateway commandGateway,
                          PasswordEncoder passwordEncoder,
                          UserService userService,
                          AuthenticationManager authenticationManager) {
        this.commandGateway = commandGateway;
        this.passwordEncoder = passwordEncoder;
        this.userService = userService;
        this.authenticationManager = authenticationManager;
    }

    @PostMapping("/login")
    public ResponseEntity<ProblemDetail> login(@RequestBody LoginRequest body,
                                               HttpServletRequest request) {
        try {
            Authentication authentication = authenticationManager.authenticate(
                    new UsernamePasswordAuthenticationToken(
                            body.getUsername(),
                            body.getPassword()
                    )
            );

            SecurityContext securityContext = SecurityContextHolder.createEmptyContext();
            securityContext.setAuthentication(authentication);
            SecurityContextHolder.setContext(securityContext);

            HttpSession session = request.getSession(true);
            session.setAttribute(
                    HttpSessionSecurityContextRepository.SPRING_SECURITY_CONTEXT_KEY,
                    securityContext
            );

            return ResponseEntity.ok(ProblemDetail.forStatus(HttpStatus.OK.value()));
        } catch (BadCredentialsException exception) {
            return ResponseEntity.status(HttpStatus.UNAUTHORIZED.value())
                    .body(ProblemDetail.forStatusAndDetail(
                            HttpStatus.UNAUTHORIZED,
                            "Invalid username or password"
                    ));
        }
    }

    @PostMapping("/logout")
    public ResponseEntity<ProblemDetail> logout(HttpServletRequest request) {
        SecurityContextHolder.clearContext();

        HttpSession session = request.getSession(false);
        if (session != null) {
            session.invalidate();
        }

        return ResponseEntity.ok(ProblemDetail.forStatus(HttpStatus.OK.value()));
    }

    @PostMapping("/register")
    public ResponseEntity<ProblemDetail> createUser(@RequestBody User body) {
        ProblemDetail problemDetail = userService.validateNewUser(body);
        if (problemDetail != null) {
            return ResponseEntity.badRequest().body(problemDetail);
        }

        String hashedPassword = passwordEncoder.encode(body.getPassword());
        try {
            commandGateway.sendAndWait(new CreateUserCommand(UUID.randomUUID().toString(), body.getUsername(), hashedPassword));
            return ResponseEntity.ok().body(ProblemDetail.forStatus(200));
        } catch (Exception e) {
            return ResponseEntity.ok().body(ProblemDetail.forStatus(500));
        }

    }
}
