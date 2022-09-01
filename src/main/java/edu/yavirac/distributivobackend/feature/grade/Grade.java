package edu.yavirac.distributivobackend.feature.grade;

import lombok.Data;
import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.Column;
import org.springframework.data.relational.core.mapping.Table;


@Data
@Table("public\".\"classrooms")
public class Grade {
    @Id
    @Column("id") 
    private Long id;
    private Long type;
    private Long location;
    private String name;
    private Long capacity;
    private String description;
    private boolean status =  true;
}