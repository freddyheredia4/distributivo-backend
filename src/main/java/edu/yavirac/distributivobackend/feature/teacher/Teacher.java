package edu.yavirac.distributivobackend.feature.teacher;

import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.Column;
import org.springframework.data.relational.core.mapping.Table;

import lombok.Data;

@Data
@Table("teacher")
public class Teacher {
    @Id
    @Column("id")
    private long id;
    private String dni;
    private String name;
    private String direction;
    private String phone;
    private String email;
}
