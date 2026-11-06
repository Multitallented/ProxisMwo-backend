package com.redcastlemedia.proxismwo.models;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.*;

@Entity
@Table(name = "mech_roles")
@NoArgsConstructor
@AllArgsConstructor
@Getter
@EqualsAndHashCode
@ToString
public class MechRole {
    @Id
    @Column
    private String name;
    @Column(name="long_range")
    private boolean longRange;
    @Column(name="mid_range")
    private boolean midRange;
    @Column(name="close_range")
    private boolean closeRange;
    @Column(name="indirect_fire")
    private boolean indirectFire;
    @Column(name="precision_fire")
    private boolean precisionFire;
    @Column
    private boolean hot;
    @Column
    private boolean cold;
}
