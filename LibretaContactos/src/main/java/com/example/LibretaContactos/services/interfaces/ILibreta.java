package com.example.LibretaContactos.services.interfaces;

import com.example.LibretaContactos.domain.Contacto;
import com.example.LibretaContactos.domain.Telefono;

public interface ILibreta {
    Contacto crear(Contacto contacto);
    Telefono tel(Telefono telefono);
}
