package edu.yavirac.distributivobackend.feature.docente;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

public interface DocenteRepository extends CrudRepository <Docente, Long> {
    List<Docente> findAll();
}
