package edu.yavirac.distributivobackend.feature.location;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

@CrossOrigin({"*"})
@RestController
@RequestMapping("/api/location")
public class LocationController {
    @Autowired
    LocationService LocationService;

    @PostMapping()
    public Location save(@RequestBody Location Location){
        return LocationService.save(Location);
    }

    @GetMapping("/{id}")
    public Location findById(@PathVariable long id){
        return LocationService.findById(id);
    }

    @GetMapping()
    public List<Location> findAll(){
        return LocationService.findAll();
    }

    @PutMapping("/{id}")
    public Location update(@RequestBody Location Location,@PathVariable long id)
    {
        return LocationService.update(id,Location);
    }

    @DeleteMapping("/{id}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void delete(@PathVariable long id){
        LocationService.deleteById(id);
    }

    @GetMapping("/find/{name}")
    public List<Location> findByName(@PathVariable String name){
        return LocationService.findByName(name);
    }

}