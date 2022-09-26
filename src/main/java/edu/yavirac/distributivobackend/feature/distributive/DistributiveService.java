package edu.yavirac.distributivobackend.feature.distributive;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DistributiveService {
    @Autowired
    DistributiveRepository distributiveRepository;

    public List<DistributiveDTO>findAllDistibutive(){
        return distributiveRepository.findAllDistibutive();
    }

    public DistributiveDTO findByTeacherId(long id){
        return distributiveRepository.findByTeacherId(id).orElse(new DistributiveDTO());
    }
    

    public DistributiveDTO findByIdDistributive(long id){
        return distributiveRepository.findByIdDistributive(id).orElse(new DistributiveDTO());
    }
    
    public Distributive save(Distributive distributive){
        return distributiveRepository.save(distributive);
        
    }

    public List<DistributiveDTO>findByTeacherLike(String name){
        return distributiveRepository.findByTeacherLikeIgnoreCase(name +  "%");
    }

}
