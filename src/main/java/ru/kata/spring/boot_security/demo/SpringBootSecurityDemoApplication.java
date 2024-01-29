package ru.kata.spring.boot_security.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class SpringBootSecurityDemoApplication {

    //todo: скрипт - стоит поправить создание таблиц ..IF NOT EXISTS или DROP TABLE.. и ее создание (если предполагается изменение структуры)

    public static void main(String[] args) {
        SpringApplication.run(SpringBootSecurityDemoApplication.class, args);
    }
}