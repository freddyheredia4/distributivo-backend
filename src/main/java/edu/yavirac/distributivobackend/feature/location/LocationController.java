package edu.yavirac.distributivobackend.feature.location;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

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
    public LocationDTO findAll(
        @RequestParam(value="count", defaultValue = "20", required = false) long capacity,
        @RequestParam(value = "page", defaultValue = "0", required = true) long page
    ){
       
        return LocationService.findAll(capacity, page);
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
    @PostMapping(value = "/import-excel")
    public List<Location> importExcelFile(@RequestParam("file") MultipartFile files) throws IOException {
        return LocationService.importExcel(files);
    }
    
    @GetMapping("/export-to-excel")
    public void exportIntoExcelFile(HttpServletResponse response) throws IOException {

        LocationService.generateExcelFile(response);
    }
   
}
