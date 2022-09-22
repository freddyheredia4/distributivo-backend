package edu.yavirac.distributivobackend.dto;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TeacherDtoService {
    @Autowired
    TeacherDtoRepository teacherDtoRepository;

    public List<TeacherDto>findAll(){
        return teacherDtoRepository.findAll();
    }

    public TeacherDto findById(long id){
        return teacherDtoRepository.findById(id).orElse(new TeacherDto());
    }

    public List<TeacherDto>findByTeacher(long id){
        return teacherDtoRepository.findByTeacher(id);
    }
}
