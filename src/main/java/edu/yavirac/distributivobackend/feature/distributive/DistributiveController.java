package edu.yavirac.distributivobackend.feature.distributive;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;


@RestController
@RequestMapping("/api/distributive")
@CrossOrigin({"*"})
public class DistributiveController {
    @Autowired
    DistributiveService distributiveService;

    @GetMapping("/findAll")
    public List<DistributiveDTO>findAll(){
        return distributiveService.findAll();
    }

    @GetMapping("/findByTeacher/{id}")
    public List<DistributiveDTO>findByTeacher(@PathVariable long id){
        return distributiveService.findByTeacher(id);
    }

    @PostMapping(value="save")
    public Distributive save(@RequestBody Distributive distributive) {        
        return distributiveService.save(distributive);
    }

    @GetMapping("/findByName/{name}")
    public List<DistributiveDTO> findByName(@PathVariable String name){
        return distributiveService.findByName(name);
    }

    @GetMapping("findByEmail/{email}")
    public List<DistributiveDTO> findByNameTeacher(@PathVariable String email){
        return distributiveService.findByEmail(email);
    }
    
}
