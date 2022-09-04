package edu.yavirac.distributivobackend.horarios;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

public interface HorarioRepository  extends CrudRepository<Horario,Long>{
    List<Horario> findAll();
    List<Horario> findByNombreLikeIgnoreCase(String term);
}
