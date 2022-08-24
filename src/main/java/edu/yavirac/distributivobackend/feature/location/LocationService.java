package edu.yavirac.distributivobackend.feature.location;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LocationService {
    @Autowired
    LocationRepository locationRepository;

    public List<Location> findAll(){
        return locationRepository.findAll();
    }

    public Location save(Location Location){

        return locationRepository.save(Location);
    }

    public Location findById(long id){
        return locationRepository.findById(id).orElse(new Location());
    }

    public Location update(Long id,Location location){
         return locationRepository.save(location);
    }

    public void deleteById(long id){
        locationRepository.deleteById(id);
    }

    public List<Location> findByName(String name){
        return locationRepository.findByNameLikeIgnoreCase(name+"%");
    }

}