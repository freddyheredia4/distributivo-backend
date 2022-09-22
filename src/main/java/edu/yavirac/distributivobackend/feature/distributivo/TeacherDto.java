package edu.yavirac.distributivobackend.feature.distributivo;

import java.sql.Date;

import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.Table;

import lombok.Data;

@Data
@Table("v_teacher_distributive")
public class TeacherDto{
    @Id
    private long id;
    private Long teacher;
    private String dniTeacher;
    private String nameTeacher;
    private String lastnameTeacher;
    private Long course;
    private String codeCourse;
    private String nameCourse;
    private String laboratoryHours;
    private String theoreticalHours;
    private Long grade;
    private String nameGrade;
    private Long schoolTime;
    private String nameSchoolTime;
    private Date startDate;
    private Date endDate;
}