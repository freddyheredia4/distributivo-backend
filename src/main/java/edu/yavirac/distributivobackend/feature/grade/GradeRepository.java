package edu.yavirac.distributivobackend.feature.grade;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.core.CrudMethods;

public interface GradeRepository extends CrudRepository <Grade, Long> {
    List <Grade>findAll();
}
