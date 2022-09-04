package edu.yavirac.distributivobackend.horarios;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/horario")
@CrossOrigin({"*"})
public class HorarioController {
    
    @Autowired
    HorarioService horarioService;

    @PostMapping("/save")
    public Horario save(@RequestBody Horario  horario ){
        return horarioService.save(horario );
    }

    @GetMapping("/{id}")
    public Horario  finById(@PathVariable long id){
        return horarioService.findById(id);
    }

    @DeleteMapping("/deleteById/{id}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void delete(@PathVariable long id){
        horarioService.deleteById(id);
    }

    @PutMapping("/update")
    public Horario  update(@RequestBody Horario  horario ){
        return horarioService.save(horario );
    }

    // @PreAuthorize("hasAuthority('PERMISO_LEER')")
    @GetMapping("/findAll")
    public List<Horario> findAll(){
        return horarioService.findAll();
    }

    @GetMapping("/findByNombre/{term}")
    public List<Horario> findByNombre(@PathVariable String term) {
        return horarioService.findByNombre(term);
    }
}
