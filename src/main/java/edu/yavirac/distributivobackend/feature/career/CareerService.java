package edu.yavirac.distributivobackend.feature.career;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CareerService {
    @Autowired
    CareerRepository careerRepository;

    public List<Career>findAll(){
        return careerRepository.findAll();
    }

    public Career findById(long id){
        return careerRepository.findById(id).orElse(new Career());
    }

    public Career save (Career career ){
        return careerRepository.save(career);
    }

    public void deleteById(long id){
        careerRepository.deleteById(id);
    } 

    public List<Career>findByNameLikeIgnoreCase(String term){
        return careerRepository.findByNameLikeIgnoreCase(term + "%");
    }
    
}
