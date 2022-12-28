package com.example.LibretaContactos.repository;

import com.example.LibretaContactos.domain.Contacto;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ContactoRepository extends CrudRepository<Contacto, Integer> {

    // agregar métodos de consulta personalizados aquí
}
