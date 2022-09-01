package edu.yavirac.distributivobackend.feature.grade;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

@CrossOrigin({"*"})
@RestController
@RequestMapping("/api/classroom")
public class GradeController {
    @Autowired
    GradeService classroomService;

    @PostMapping()
    public Grade save(@RequestBody Grade classroom){
        System.out.println("ClassRoomController.update()\n"+ classroom);
        return classroomService.save(classroom);
    }

    @GetMapping("/{id}")
    public Grade findById(@PathVariable long id){
        return classroomService.findById(id);
    }

    @GetMapping()
    public GradeDTO findAll(
        @RequestParam(value="count", defaultValue = "20", required = false) long capacity,
        @RequestParam(value = "page", defaultValue = "0", required = true) long page
    ){
       
        return classroomService.findAll(capacity, page);
    }
    
    @PostMapping("/update")
    public Grade update(@RequestBody Grade classroom)
    {
        return classroomService.update(classroom);
    }

    @GetMapping("delete/{id}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public String delete(@PathVariable long id){
        classroomService.deleteById(id);
        return "si";
    }

    @GetMapping("/find/{name}")
    public List<Grade> findByName(@PathVariable String name){
        return classroomService.findByName(name);
    }
    @PostMapping(value = "/import-excel")
    public List<Grade> importExcelFile(@RequestParam("file") MultipartFile files) throws IOException {
        
        return classroomService.importExcel(files);
    }
    
    @GetMapping("/export-to-excel")
    public void exportIntoExcelFile(HttpServletResponse response) throws IOException {

        classroomService.generateExcelFile(response);
    }
   
}
