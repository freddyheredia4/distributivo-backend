package edu.yavirac.distributivobackend.feature.distributive;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DistributiveService {
    @Autowired
    DistributiveRepository distributiveRepository;

    public List<DistributiveDTO>findAll(){
        return distributiveRepository.findByDistibutiveAll();
    }
    
    public DistributiveDTO findByDistributiveId(long id){
        return distributiveRepository.findByDistributiveId(id).orElse(new DistributiveDTO());
    }

    public List<DistributiveDTO> findByTeacherId(long id){
        return distributiveRepository.findByTeacherId(id);
    }
    
    public Distributive save(Distributive distributive){
        return distributiveRepository.save(distributive);
        
    }

    public List<DistributiveDTO>findByName(String name){
        return distributiveRepository.findByName(name);
    }
    public List<DistributiveDTO> findByEmail(String email){
        return distributiveRepository.findByEmail(email);
    }

    public List<DistributiveDTO>findByTeacherDni(String dni){
        return distributiveRepository.findByTeacherDni(dni + "%");
    }

    public List<DistributiveDTO>findByTeacherName(String name){
        return distributiveRepository.findByTeacherName(name + "%");
    }
    
    public List<DistributiveDTO>findByTeacherLastname(String lastname){
        return distributiveRepository.findByTeacherLastname(lastname + "%");
}        

    public List<DistributiveDTO>findByPeriodoName(String periodo){
        return distributiveRepository.findByPeriodoName(periodo + "%");
    }

    public List<DistributiveDTO>findByCareerName(String career ){
        return distributiveRepository.findByCareerName(career + "%");
    }
}
