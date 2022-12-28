package com.example.LibretaContactos.repository;

import com.example.LibretaContactos.domain.Telefono;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository

public interface TelefonoRepository extends CrudRepository<Telefono, Integer> {


}
