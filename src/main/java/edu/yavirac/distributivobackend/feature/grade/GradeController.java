package edu.yavirac.distributivobackend.feature.grade;

import java.util.List;

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
@RequestMapping("/api/grade")
@CrossOrigin({"*"})
public class GradeController {
    @Autowired
    GradeService gradeService;

    @GetMapping("/findAll")
    public List<Grade> findAll(){
        return gradeService.findAll();
    }

    @GetMapping("/findById/{id}")
    public Grade findById(@PathVariable long id){
        return gradeService.findById(id);
    }

    @PostMapping("/save")
    public Grade save(@RequestBody Grade grade){
        return gradeService.save(grade);
    }

    @DeleteMapping("/deleteById/{id}")
    public void deleteById(@PathVariable long id){
        gradeService.deleteById(id);
    }

}
