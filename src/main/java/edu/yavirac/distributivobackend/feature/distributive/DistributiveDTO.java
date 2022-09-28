package edu.yavirac.distributivobackend.feature.distributive;


import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.Table;

import lombok.Data;

@Data
@Table("v_teacher_distributive")
public class DistributiveDTO{
    @Id
    private long id;
    private String teacherCedula;
    private String teacher;
    private String teacherApellido;
    private String grade;
    private String subject;
    private String period;
    private String color;
}