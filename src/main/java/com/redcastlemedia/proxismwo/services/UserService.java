package com.redcastlemedia.proxismwo.services;

import com.redcastlemedia.proxismwo.events.UserCreatedEvent;
import com.redcastlemedia.proxismwo.models.User;
import com.redcastlemedia.proxismwo.models.UserRoles;
import com.redcastlemedia.proxismwo.repositories.UserRepository;
import org.axonframework.eventhandling.EventHandler;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ProblemDetail;
import org.springframework.stereotype.Service;

@Service
public class UserService {

    private final UserRepository userRepository;

    @Autowired
    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public ProblemDetail validateNewUser(User body) {
        if (userRepository.findByUsername(body.getUsername()).isPresent()) {
            return ProblemDetail.forStatus(HttpStatus.BAD_REQUEST);
        }

        if (body.getUsername().length() < 3 || body.getUsername().length() > 20 ||
                !body.getUsername().matches("^[a-zA-Z0-9]+$")) {
            return ProblemDetail.forStatus(HttpStatus.BAD_REQUEST);
        }

        String unvalidatedPassword = body.getPassword();
        if (!unvalidatedPassword.matches("^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&+=])(?=\\S+$).{8,}$")) {
            return ProblemDetail.forStatusAndDetail(HttpStatus.BAD_REQUEST, "Invalid username or password");
        }
        return null;
    }

    @EventHandler
    public void on(UserCreatedEvent event) {
        User user = new User(event.getUserId(), event.getUsername(), event.getPassword(), UserRoles.USER.name());
        this.userRepository.save(user);
    }
}
