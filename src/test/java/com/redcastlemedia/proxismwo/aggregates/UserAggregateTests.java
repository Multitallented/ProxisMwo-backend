package com.redcastlemedia.proxismwo.aggregates;

import com.redcastlemedia.proxismwo.commands.CreateUserCommand;
import com.redcastlemedia.proxismwo.events.UserCreatedEvent;
import com.redcastlemedia.proxismwo.repositories.UserRepository;
import org.axonframework.test.aggregate.AggregateTestFixture;
import org.axonframework.test.aggregate.FixtureConfiguration;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.util.UUID;

import static org.mockito.Mockito.mock;

public class UserAggregateTests {

    private FixtureConfiguration<UserAggregate> fixture;
    private UserRepository userRepository;

    @BeforeEach
    public void setUp() {
        fixture = new AggregateTestFixture<>(UserAggregate.class);
        userRepository = mock(UserRepository.class);
        fixture.registerInjectableResource(userRepository);
    }

    @Test
    public void init() {
        String userId = UUID.randomUUID().toString();
        String username = "Username";
        String password = "pass";
        fixture.givenNoPriorActivity()
                .when(new CreateUserCommand(userId, username, password))
                .expectEvents(new UserCreatedEvent(userId, username, password));
    }
}
