package edu.yavirac.distributivobackend.feature.docente;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DocenteService {
    @Autowired
    DocenteRepository docenteRepository;

    public List<Docente> findAll(){
        return docenteRepository.findAll();
    }

    public Docente save(Docente docente ){
        return docenteRepository.save(docente);
    }

    public Docente findById(long id){
        return docenteRepository.findById(id).orElse(new Docente());
    }

    public Docente update (Docente docente){
        return docenteRepository.save(docente);
    }

    public void delete (long id){
        docenteRepository.deleteById(id);
    }  
}
