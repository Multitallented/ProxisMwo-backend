package com.redcastlemedia.proxismwo.models;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.*;

@Entity
@Table(name = "users")
@NoArgsConstructor
@AllArgsConstructor
@Getter @EqualsAndHashCode @ToString
public class User {
    @Id
    @Column
    private String id;

    @Column
    private String username;

    @Column
    private String password;

    @Column
    private String role;
}
