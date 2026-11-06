package com.redcastlemedia.proxismwo.models;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.*;

@Entity
@Table(name = "lore_units")
@NoArgsConstructor
@AllArgsConstructor
@Getter
@EqualsAndHashCode
@ToString
public class LoreUnit {
    @Id
    @Column
    private String name;
    @Column
    private boolean clan;
    @Column
    private boolean pirate;
    @Column
    private boolean faction;
    @Column
    private boolean mercenary;
    @Column
    private String description;
    @Column
    private String image;
}
