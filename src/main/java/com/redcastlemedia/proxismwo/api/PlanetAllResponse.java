package com.redcastlemedia.proxismwo.api;

import com.redcastlemedia.proxismwo.models.Planet;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

import java.util.HashMap;

@AllArgsConstructor
@Getter @Setter
public class PlanetAllResponse {
    private HashMap<String, Planet> planets;
}
