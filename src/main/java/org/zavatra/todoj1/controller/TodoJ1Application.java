package org.zavatra.todoj1.controller;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan({"org.zavatra.todoj1.controller","org.zavatra.todoj1.API"})
public class TodoJ1Application {

    public static void main(String[] args) {
        SpringApplication.run(TodoJ1Application.class, args);
    }

}
