package com.redcastlemedia.proxismwo.models;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(name = "mechs_to_units")
@NoArgsConstructor
@AllArgsConstructor
@Getter
@EqualsAndHashCode
@ToString
public class MechsToUnits {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column
    private String variant;
    @Column
    private String unit_name;
}
