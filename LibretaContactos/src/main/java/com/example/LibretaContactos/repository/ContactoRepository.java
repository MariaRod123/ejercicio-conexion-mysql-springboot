package com.example.LibretaContactos.repository;
import com.example.LibretaContactos.domain.Contacto;
import org.springframework.data.jpa.repository.JpaRepository;

import org.springframework.stereotype.Repository;

@Repository
public interface ContactoRepository extends JpaRepository<Contacto, Integer>{

    // agregar métodos de consulta personalizados aquí
}
