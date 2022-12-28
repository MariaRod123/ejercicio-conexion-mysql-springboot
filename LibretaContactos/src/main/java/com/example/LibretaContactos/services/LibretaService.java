package com.example.LibretaContactos.services;
import com.example.LibretaContactos.domain.Contacto;
import com.example.LibretaContactos.domain.Telefono;
import com.example.LibretaContactos.repository.ContactoRepository;
import com.example.LibretaContactos.repository.TelefonoRepository;
import com.example.LibretaContactos.services.interfaces.ILibreta;
import org.springframework.beans.factory.annotation.Autowired;

public class LibretaService implements ILibreta {
    @Autowired
    ContactoRepository contactoRepository;
    @Autowired
    TelefonoRepository telefonoRepository;

    @Override
    public Contacto crear(Contacto contacto) {
        return contactoRepository.save(contacto);
    }

    @Override
    public Telefono tel(Telefono telefono) {
        return telefonoRepository.save(telefono);
    }
}
