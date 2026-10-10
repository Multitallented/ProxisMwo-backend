package com.redcastlemedia.proxismwo.controllers;

import com.redcastlemedia.proxismwo.commands.CreateUserCommand;
import com.redcastlemedia.proxismwo.events.UserCreatedEvent;
import com.redcastlemedia.proxismwo.models.User;
import com.redcastlemedia.proxismwo.services.UserService;
import org.axonframework.commandhandling.gateway.CommandGateway;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ProblemDetail;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.UUID;

@RestController
public class UserController {

    private final CommandGateway commandGateway;
    private final PasswordEncoder passwordEncoder;
    private final UserService userService;

    @Autowired
    public UserController(CommandGateway commandGateway,
                          PasswordEncoder passwordEncoder,
                          UserService userService) {
        this.commandGateway = commandGateway;
        this.passwordEncoder = passwordEncoder;
        this.userService = userService;
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
