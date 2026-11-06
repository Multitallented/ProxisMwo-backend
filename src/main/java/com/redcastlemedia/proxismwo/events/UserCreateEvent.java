package com.redcastlemedia.proxismwo.events;

public record UserCreateEvent(
        String userId,
        String username,
        String password,
        String email) {
}
