package edu.yavirac.distributivobackend.horarios;

import java.sql.Date;
import java.sql.Time;

import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.Column;
import org.springframework.data.relational.core.mapping.Table;

import lombok.Data;

@Data
@Table("horarios\".\"horario")
public class Horario {
    
    @Id
    @Column("horario_id")
    private long horarioId;

    private Date fecha;

    private Time hora;

    private String nombre;

}
