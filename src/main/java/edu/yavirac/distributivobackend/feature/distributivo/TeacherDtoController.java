package edu.yavirac.distributivobackend.feature.distributivo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/teacherDto")
@CrossOrigin({"*"})
public class TeacherDtoController {
    @Autowired
    TeacherDtoService teacherDtoService;

    @GetMapping("/findAll")
    public List<TeacherDto>findAll(){
        return teacherDtoService.findAll();
    }

    @GetMapping("/findByTeacher/{id}")
    public List<TeacherDto>findByTeacher(@PathVariable long id){
        return teacherDtoService.findByTeacher(id);
    }
}
