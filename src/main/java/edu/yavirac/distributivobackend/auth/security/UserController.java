package edu.yavirac.distributivobackend.auth.security;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@CrossOrigin("*")
@RequestMapping("/api/user")
public class UserController {
    
    @Autowired UserService userService;

    @GetMapping()
    public UserDTO findAlllPageable(
        @RequestParam(value="count", defaultValue = "20", required = false) long capacity,
        @RequestParam(value = "page", defaultValue = "0", required = true) long page
    ){
       
        return userService.findAllPageable(capacity, page);
    }

    @PostMapping()
    public User save(@RequestBody User user){
        return userService.save(user);
    }

    @PostMapping("/update")
    public User update(@RequestBody User user){
        return userService.save(user);
    }

    @GetMapping("/{id}")
    public User  findById(@PathVariable Long id){
        return userService.findById(id);

    }

    @GetMapping("/find/{name}")
    public List<User> findByName(@PathVariable String name){
        return userService.findByName(name);
    }
    
}
