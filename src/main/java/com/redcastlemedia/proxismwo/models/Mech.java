package com.redcastlemedia.proxismwo.models;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.*;

@Entity
@Table(name = "mechs")
@NoArgsConstructor
@AllArgsConstructor
@Getter
@EqualsAndHashCode
@ToString
public class Mech {
    @Id
    @Column
    private String variant;

    @Column
    private String chassis;

    @Column(name = "base_price")
    private int basePrice;

    @Column
    private int quantity;

    @Column
    private boolean hero;

    @Column
    private boolean legend;

    @Column
    private boolean omni;

    @Column
    private double volatility;

    @Column
    private int tons;

    @Column
    private boolean jets;

    @Column(name="fast_speed")
    private boolean fastSpeed;

    @Column(name="slow_speed")
    private boolean slowSpeed;

    @Column(name="mech_role")
    private String mechRole;
}
