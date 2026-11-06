package com.redcastlemedia.proxismwo.controllers;

import com.redcastlemedia.proxismwo.api.PlanetAllResponse;
import com.redcastlemedia.proxismwo.models.Planet;
import com.redcastlemedia.proxismwo.repositories.PlanetRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;

@RestController
public class PlanetController {

    private final PlanetRepository planetRepository;

    @Autowired
    public PlanetController(PlanetRepository planetRepository) {
        this.planetRepository = planetRepository;
    }

    @GetMapping("/planets-all")
    public ResponseEntity<PlanetAllResponse> getAllPlanets() {
        PlanetAllResponse response = new PlanetAllResponse(new HashMap<>());
        for (Planet planet : this.planetRepository.findAll()) {
            response.getPlanets().put(planet.getPlanet(), planet);
        }
        return ResponseEntity.ok(response);
    }
}
