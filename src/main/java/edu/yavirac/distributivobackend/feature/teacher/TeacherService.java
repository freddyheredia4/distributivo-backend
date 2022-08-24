package edu.yavirac.distributivobackend.feature.teacher;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TeacherService {
    @Autowired
    TeacherRepository teacherRepository;

    public List<Teacher> findAll(){
        return teacherRepository.findAll();
    }

    public Teacher save(Teacher teacher ){
        return teacherRepository.save(teacher);
    }

    public Teacher findById(long id){
        return teacherRepository.findById(id).orElse(new Teacher());
    }

    public Teacher update (Teacher teacher){
        return teacherRepository.save(teacher);
    }

    public void deleteById (long id){
        teacherRepository.deleteById(id);
    }  
}
