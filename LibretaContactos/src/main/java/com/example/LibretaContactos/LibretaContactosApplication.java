package com.example.LibretaContactos;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.PropertySource;

@PropertySource("classpath:application.properties") 
@SpringBootApplication
public class LibretaContactosApplication {

	public static void main(String[] args) {
		SpringApplication.run(LibretaContactosApplication.class, args);
	}

}
