package com.redcastlemedia.proxismwo.repositories;

import com.redcastlemedia.proxismwo.models.Planet;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PlanetRepository extends PagingAndSortingRepository<Planet, String>, CrudRepository<Planet, String> {
}
