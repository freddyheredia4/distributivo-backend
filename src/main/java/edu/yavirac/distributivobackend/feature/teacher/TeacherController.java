package edu.yavirac.distributivobackend.feature.teacher;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
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
@RequestMapping("/api/teacher")
@CrossOrigin({"*"})
public class TeacherController {
    @Autowired
    TeacherService teacherService;
    
    @GetMapping("/findAll")
    public List<Teacher> findAll(){
        return teacherService.findAll();
    }

    @PostMapping("/save")
    public Teacher save(@RequestBody Teacher docente){
        return teacherService.save(docente);
    }

    @GetMapping("/findById/{id}")
    public Teacher findById (@PathVariable long id ){
        return teacherService.findById(id);
    }

    @PutMapping("/update")
    public Teacher update (@RequestBody Teacher teacher){
        return teacherService.update(teacher);
    }

    @DeleteMapping("/delete/{id}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void delete(@PathVariable long id){
        teacherService.deleteById(id);
    }
    
}
