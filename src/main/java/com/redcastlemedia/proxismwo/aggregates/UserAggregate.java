package com.redcastlemedia.proxismwo.aggregates;

import com.redcastlemedia.proxismwo.commands.CreateUserCommand;
import com.redcastlemedia.proxismwo.events.UserCreatedEvent;
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
        AggregateLifecycle.apply(new UserCreatedEvent(
                command.getUserId(),
                command.getUsername(),
                command.getPassword()));
    }

    @EventSourcingHandler
    public void on(UserCreatedEvent event) {
        this.id = event.getUserId();
    }
}
