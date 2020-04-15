package ru.itis.kursach_backend;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import ru.itis.kursach_backend.services.logic.LogicServiceImpl;

@SpringBootApplication
public class KursachBackendApplication {

    public static void main(String[] args) {

        SpringApplication.run(KursachBackendApplication.class, args);

    }


}
