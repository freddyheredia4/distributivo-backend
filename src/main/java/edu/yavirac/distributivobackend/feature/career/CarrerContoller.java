package edu.yavirac.distributivobackend.feature.career;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/career")
@CrossOrigin({"*"})
public class CarrerContoller {
    @Autowired
    CareerService careerService;

    @GetMapping("/findAll")
    public List<Career>findAll(){
        return careerService.findAll();
    }
    @PostMapping("/save")
    public Career save (@RequestBody Career career ){
        return careerService.save(career);
    }
    @GetMapping("/findById/{id}")
    public Career findById(@PathVariable long id){
        return careerService.findById(id);
    }

    @DeleteMapping("/deleteById/{id}")
    public void deleteById(@PathVariable long id){
        careerService.deleteById(id);
    }




}
