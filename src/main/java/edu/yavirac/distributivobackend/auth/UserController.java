package edu.yavirac.distributivobackend.auth;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;



@RestController
@RequestMapping("/api/user/")
@CrossOrigin({"*"})
public class UserController {
    @Autowired
    UserService userService;

    //@PreAuthorize("hasAuthority('USUARIO_LEER')")
    @GetMapping("findAll")
    public List<User> findAll(){
        return userService.findAll();
    }

    //@PreAuthorize("hasAuthority('USUARIO_CREAR')")
    @PostMapping("save")
    public User save(@RequestBody User entity){
        return userService.save(entity);
    }

    //@PreAuthorize("hasAuthority('USUARIO_ACTUALIZAR')")
    @PutMapping("update")
    public User update(@RequestBody User entity){
        return userService.save(entity);
    }

    //@PreAuthorize("hasAuthority('USUARIO_ELIMINAR')")
    @DeleteMapping("deleteById/{id}")
    public void deleteById(@PathVariable long id){
        userService.deleteById(id);
    }

    //@PreAuthorize("hasAuthority('USUARIO_LEER')")
    @GetMapping("findById/{id}")
    public User findById(@PathVariable long id){
        return userService.findById(id);
    }
}
