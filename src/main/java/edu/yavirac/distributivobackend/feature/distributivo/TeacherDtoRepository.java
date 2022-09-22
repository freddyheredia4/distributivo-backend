package edu.yavirac.distributivobackend.feature.distributivo;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

public interface TeacherDtoRepository extends CrudRepository<TeacherDto, Long> {
    
    final String SELECT_TEACHER = "SELECT dis.id, teacher.dni as teacher_cedula, teacher.name as teacher, teacher.lastname as teacher_apellido, grade.name as grade, subject.name subject,periood.name period FROM teacher_distributive dis JOIN school_period periood ON periood.id = dis.school_time JOIN teacher ON teacher.id = dis.teacher JOIN subject ON subject.id = dis.course JOIN grade ON grade.id = dis.grade";
    List<TeacherDto>findAll();
    List<TeacherDto>findByTeacher(Long id);
}