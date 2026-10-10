package com.redcastlemedia.proxismwo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.persistence.autoconfigure.EntityScan;

@SpringBootApplication
@EntityScan({
		"com.redcastlemedia.proxismwo",
		"org.axonframework.eventsourcing.eventstore.jpa",
		"org.axonframework.eventhandling.tokenstore.jpa",
		"org.axonframework.modelling.saga.repository.jpa"
})
public class ProxisMwo {

	public static void main(String[] args) {
		SpringApplication.run(ProxisMwo.class, args);
	}

}
