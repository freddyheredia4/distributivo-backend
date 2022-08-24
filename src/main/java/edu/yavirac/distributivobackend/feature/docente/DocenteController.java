package edu.yavirac.distributivobackend.feature.docente;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


@RestController
@RequestMapping("/api/docente")
@CrossOrigin({"*"})
public class DocenteController {
    @Autowired
    DocenteService docenteService;
    
    @GetMapping("/list-docente")
    public List<Docente> findAll(){
        return docenteService.findAll();
    }

    @PostMapping("/save")
    public Docente save(Docente docente){
        return docenteService.save(docente);
    }

    @GetMapping("findById/{id}")
    public Docente findById ( long id ){
        return docenteService.findById(id);
    }

    @PutMapping("/update")
    public Docente update (Docente docente){
        return docenteService.update(docente);
    }

    @DeleteMapping("delete/{id}")
    public void delete(long id){
        docenteService.delete(id);
    }
    
}
