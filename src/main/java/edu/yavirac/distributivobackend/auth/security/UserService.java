package edu.yavirac.distributivobackend.auth.security;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;


@Service
public class UserService implements UserDetailsService {
    
    @Autowired
    UserRepository userRepository;
    @Autowired
    RoleService roleService;


 
    //Create and update
    public User save(User entity){
        SecurityConfiguration securityConfiguration = new SecurityConfiguration();
        BCryptPasswordEncoder encoder = securityConfiguration.bCryptPasswordEncoder();

        entity.setPassword(encoder.encode(entity.getPassword()));

        return userRepository.save(entity);
    }

    //Read
    public User findById(long id){
        return userRepository.findById(id).orElseThrow();
    }

    //Delete 
    public void deleteById(long id){
        userRepository.deleteById(id);
    }

    public List<User> findAll(){
        return userRepository.findAll();
    }

    public List<User> findByName(String name){
        return userRepository.findByNameLikeIgnoreCase(name + '%');

    }

    public UserDTO findAllPageable(long capacity, long page) {

        long offset = page <= 0 ? 0 : page * capacity;

        UserDTO dto = new UserDTO();
        dto.setUsers(userRepository.findAllPageable(capacity, offset));
        dto.setTotal(userRepository.count());
        dto.setTotalPages(dto.getTotal() / capacity + 1);
        dto.setCapacity(capacity);
        dto.setPage(page);

        return dto;

    }


    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        
        return this.getUserAuthoritiesByUsername(username);
    }

    public User getUserAuthoritiesByUsername(String username)
    {
        User user = userRepository.findByUsername(username);
        List<GrantedAuthority> grantedAuthorities = new ArrayList<>();

        for (UserRole userRole : user.getRoles())
        {
            List<String> authorities = roleService.getAuthoritiesByRolid(userRole.getRoleId());
            for (String authorityName : authorities)
            {
                grantedAuthorities.add(new SimpleGrantedAuthority(authorityName));
            }
        }
        user.setAuthorities(grantedAuthorities);
        return user;
    }
    
}
