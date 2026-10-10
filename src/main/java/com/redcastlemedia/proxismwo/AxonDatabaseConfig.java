package com.redcastlemedia.proxismwo;

import org.axonframework.common.jpa.EntityManagerProvider;
import org.axonframework.common.transaction.TransactionManager;
import org.axonframework.eventsourcing.eventstore.EmbeddedEventStore;
import org.axonframework.eventsourcing.eventstore.EventStore;
import org.axonframework.eventsourcing.eventstore.jpa.JpaEventStorageEngine;
import org.axonframework.serialization.Serializer;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class AxonDatabaseConfig {

    // Configure the storage engine to target your JPA database
    @Bean
    public EventStore eventStorageEngine(EntityManagerProvider entityManagerProvider,
                                                 TransactionManager transactionManager,
                                                 Serializer serializer) {
        JpaEventStorageEngine storageEngine = JpaEventStorageEngine.builder()
                .entityManagerProvider(entityManagerProvider)
                .transactionManager(transactionManager)
                .eventSerializer(serializer) // Uses default Jackson/XStream serializer
                .snapshotSerializer(serializer)
                .build();

        return EmbeddedEventStore.builder()
                .storageEngine(storageEngine)
                .build();
    }
}
