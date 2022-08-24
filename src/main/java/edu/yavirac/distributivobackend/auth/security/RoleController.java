package edu.yavirac.distributivobackend.auth.security;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


@RestController
@CrossOrigin({"*"})
@RequestMapping("/api/role/")
public class RoleController {
    
    @Autowired
    RoleService roleService;

    @PostMapping("save")
    public Role save(@RequestBody Role role){
        return roleService.save(role);
    }

    @GetMapping("{id}")
    public Role findById(@PathVariable long id){
        return roleService.findById(id);
    }

    @DeleteMapping("deleteById{id}")
    public void deleteById(@PathVariable long id){
        roleService.deleteById(id);
    }

    @GetMapping("findAll")
    public List<Role> findAll(){
        return roleService.findAll();
    }
}
