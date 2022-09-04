package edu.yavirac.distributivobackend.horarios;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class HorarioService {
    
    @Autowired
    HorarioRepository horarioRepository;

    public Horario save(Horario horario){
        return horarioRepository.save(horario);
    }

    public Horario update(Horario horario){
        return horarioRepository.save(horario);
    }

    public void deleteById(long id){
        horarioRepository.deleteById(id);
    }

    public Horario findById(long id){
        return horarioRepository.findById(id).orElse(new Horario());
    }

    public List<Horario> findAll(){
        return horarioRepository.findAll();
    }

    public List<Horario> findByNombre(String term){
        return horarioRepository.findByNombreLikeIgnoreCase(term+"%");
    }
}
