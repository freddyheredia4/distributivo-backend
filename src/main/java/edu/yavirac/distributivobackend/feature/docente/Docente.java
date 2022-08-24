package edu.yavirac.distributivobackend.feature.docente;

import java.sql.Date;
import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.Column;
import org.springframework.data.relational.core.mapping.Table;

import lombok.Data;

@Data
@Table("docente")
public class Docente {
    @Id
    @Column("cedula")
    private int cedula;
    private String nombre;
    private Date ingreso;
}
