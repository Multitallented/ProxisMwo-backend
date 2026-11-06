package com.redcastlemedia.proxismwo.models;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.*;

@Entity
@Table(name = "units")
@NoArgsConstructor
@AllArgsConstructor
@Getter @EqualsAndHashCode @ToString
public class Unit {
    @Id
    @Column
    private String name;

    @Column
    private boolean clan;

    @Column
    private boolean faction;

    @Column
    private boolean pirate;

    @Column
    private boolean mercenary;

    @Column
    private String description;

    @Column
    private String image;

    @Column
    private String video;

    @Column
    private int honor;

    @Column
    private int wins;

    @Column
    private int loses;

    @Column
    private int liquid_cbills;

    @Column
    private String leader;

    @Column
    private int accolades;

    @Column
    private String lore_unit;
}
