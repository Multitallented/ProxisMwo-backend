package com.redcastlemedia.proxismwo.models;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.*;

@Entity
@Table(name = "planets")
@NoArgsConstructor
@AllArgsConstructor
@Getter
@EqualsAndHashCode
@ToString
public class Planet {
    @Id
    @Column
    private String planet;
    @Column
    private double x;
    @Column
    private double y;
    @Column
    private String controller;
    @Column
    private String image;
    @Column
    private boolean sizeable_economy;
}
