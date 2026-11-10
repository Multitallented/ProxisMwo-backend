package com.redcastlemedia.proxismwo.models;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.*;

@Entity
@Table(name = "unit_rankings")
@NoArgsConstructor
@AllArgsConstructor
@Getter
@EqualsAndHashCode
@ToString
public class UnitRank {
    @Id
    @Column
    private int id;
    @Column(name="unit_name")
    private String unitName;
    @Column
    private int rank;
    @Column
    private String tournament;
}
