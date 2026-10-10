package com.redcastlemedia.proxismwo.repositories;

import com.redcastlemedia.proxismwo.models.User;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface UserRepository extends PagingAndSortingRepository<User, String>, CrudRepository<User, String> {

    Optional<User> findByUsername(String username);

    @Query("SELECT count(entry) FROm User entry WHERE entry.username=:username")
    int countByUsername(String username);

}
