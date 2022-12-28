package com.example.LibretaContactos.domain;
import com.fasterxml.jackson.annotation.JsonBackReference;
import lombok.*;
import javax.persistence.*;
import java.time.Instant;


@Getter
@Setter
@RequiredArgsConstructor

@Entity
@Table(name = "telefono")
public class Telefono {

    @Id

    @Column(name = "tel_id", nullable = false)
    private Integer id;

    @ManyToOne(fetch = FetchType.LAZY, targetEntity = Contacto.class, optional = false)
    @JoinColumn(name = "tel_contacto_id", nullable = false)
    @JsonBackReference
    private Contacto contacto;

    @Column(name = "tel_telefono", nullable = false, length = 30)
    private String telefono;

    @Column(name = "tel_created_at", nullable = false, updatable = false)
    private Instant createdAt;

    @Column(name = "tel_updated_at")
    private Instant updatedAt;


}
