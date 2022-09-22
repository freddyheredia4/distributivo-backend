package edu.yavirac.distributivobackend.feature.distributive;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DistributiveService {
    @Autowired
    DistributiveRepository distributiveRepository;

    public List<DistributiveDTO>findAll(){
        return distributiveRepository.findAllDistibutive();
    }

    public DistributiveDTO findById(long id){
        return distributiveRepository.findByIdDto(id).orElse(new DistributiveDTO());
    }

    public List<DistributiveDTO>findByTeacher(long id){
        return distributiveRepository.findByTeacher(id);
    }

    public Distributive save(Distributive distributive){
        return distributiveRepository.save(distributive);

    }

    public List<DistributiveDTO>findByName(String dni){
        return distributiveRepository.findByNameDni(dni);
    }
    public List<DistributiveDTO> findByEmail(String email){
        return distributiveRepository.findByEmail(email);

    }
}
