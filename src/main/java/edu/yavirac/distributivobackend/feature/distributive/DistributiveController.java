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
    public List<DistributiveDTO>findAllDistibutive(){
        return distributiveService.findAllDistibutive();
    }

    @GetMapping("/findByIdTeacher/{id}")
    public DistributiveDTO findByTeacherId(@PathVariable long id){
        return distributiveService.findByTeacherId(id);
    }

    @GetMapping("/findByIdDistributive/{id}")
    public DistributiveDTO findByIdDistributive(@PathVariable long id){
        return distributiveService.findByIdDistributive(id);
    }
        
    @PostMapping("/save")
    public Distributive save(@RequestBody Distributive distributive) {        
        return distributiveService.save(distributive);
    }

    @GetMapping("/findByTeacherLike/{name}")
    public List<DistributiveDTO>findByTeacherLike( @PathVariable String name){
        return distributiveService.findByTeacherLike(name + "%");
    }
}
