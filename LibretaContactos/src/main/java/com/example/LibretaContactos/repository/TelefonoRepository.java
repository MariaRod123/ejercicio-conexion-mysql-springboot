package com.example.LibretaContactos.repository;
import com.example.LibretaContactos.domain.Telefono;
import org.springframework.data.jpa.repository.JpaRepository;

import org.springframework.stereotype.Repository;

@Repository

public interface TelefonoRepository extends JpaRepository <Telefono, Integer> {


}
