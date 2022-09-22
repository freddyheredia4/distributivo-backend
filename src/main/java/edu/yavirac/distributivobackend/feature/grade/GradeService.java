package edu.yavirac.distributivobackend.feature.grade;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class GradeService {
    @Autowired
    GradeRepository gradeRepository;

    public List<Grade>findAll(){
        return gradeRepository.findAll();
    }

    public Grade findById(long id){
        return gradeRepository.findById(id).orElse(new Grade());
    }

    public Grade save(Grade grade){
        return gradeRepository.save(grade);
    }

    public void deleteById(long id){
        gradeRepository.deleteById(id);
    }
}