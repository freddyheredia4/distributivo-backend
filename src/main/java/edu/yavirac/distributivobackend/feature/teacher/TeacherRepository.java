package edu.yavirac.distributivobackend.feature.teacher;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

public interface TeacherRepository extends CrudRepository <Teacher, Long> {
    List<Teacher> findAll();
}
