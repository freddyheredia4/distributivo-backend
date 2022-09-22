package edu.yavirac.distributivobackend.dto;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

public interface TeacherDtoRepository extends CrudRepository<TeacherDto, Long> {
    

    List<TeacherDto>findAll();

    List<TeacherDto>findByTeacher(Long id);
}
