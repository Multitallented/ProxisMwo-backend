package com.redcastlemedia.proxismwo.aggregates;

import com.redcastlemedia.proxismwo.commands.CreateUserCommand;
import com.redcastlemedia.proxismwo.events.UserCreateEvent;
import lombok.NoArgsConstructor;
import org.axonframework.commandhandling.CommandHandler;
import org.axonframework.eventsourcing.EventSourcingHandler;
import org.axonframework.modelling.command.AggregateIdentifier;
import org.axonframework.modelling.command.AggregateLifecycle;
import org.axonframework.spring.stereotype.Aggregate;

@Aggregate @NoArgsConstructor
public class UserAggregate {

    @AggregateIdentifier
    private String id;

    @CommandHandler
    public UserAggregate(CreateUserCommand command) {
        AggregateLifecycle.apply(new UserCreateEvent(
                command.getUserId(),
                command.getUsername(),
                command.getPassword(),
                command.getEmail()));
    }

    @EventSourcingHandler
    public void on(UserCreateEvent event) {
        this.id = event.userId();
    }
}
