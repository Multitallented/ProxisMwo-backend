package com.redcastlemedia.proxismwo.events;

import lombok.*;

@AllArgsConstructor
@ToString
@EqualsAndHashCode
@Getter
@Setter
public class UserCreatedEvent {

    private final String userId;
    private final String username;
    private final String password;
}
