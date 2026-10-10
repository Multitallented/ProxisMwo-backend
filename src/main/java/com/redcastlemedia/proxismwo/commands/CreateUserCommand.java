package com.redcastlemedia.proxismwo.commands;

import lombok.*;
import org.axonframework.modelling.command.TargetAggregateIdentifier;

@AllArgsConstructor
@ToString
@EqualsAndHashCode
@Getter
@Setter
public class CreateUserCommand {

    @TargetAggregateIdentifier
    private final String userId;
    private final String username;
    private final String password;
}
