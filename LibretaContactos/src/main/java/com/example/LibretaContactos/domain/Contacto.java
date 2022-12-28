package com.example.LibretaContactos.domain;

import com.fasterxml.jackson.annotation.JsonManagedReference;
import lombok.*;
import javax.persistence.*;
import java.time.Instant;
import java.util.ArrayList;
import java.util.List;


@Getter
@Setter
@ToString
@RequiredArgsConstructor

@Entity
@Table(name = "contacto")

public class Contacto {
    @Id
    @Column(name = "cnt_id", nullable = false)
    private Integer id;

    @Column(name = "cnt_nombre", nullable = false, length = 100)
    private String nombre;

    @Column(name = "cnt_apellido", nullable = false, length = 100)
    private String apellido;

    @Column(name = "cnt_created_at", nullable = false, updatable = false)
    private Instant createdAt;

    @Column(name = "cnt_updated_at")
    private Instant updatedAt;

    @OneToMany(
            fetch = FetchType.EAGER,
            targetEntity = Telefono.class,
            cascade = CascadeType.REMOVE,
            mappedBy = "contacto"
    )
    @JsonManagedReference
    private List<Telefono> telefonos = new ArrayList<>();


}
