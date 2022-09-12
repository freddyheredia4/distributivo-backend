package edu.yavirac.distributivobackend.auth.security;
import java.util.List;

import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;


public interface UserRepository extends CrudRepository <User, Long>{
    
    final String SELECT_ALL_PAGEABLE = "SELECT * FROM auth.users WHERE enabled=true LIMIT :limit offset :offset";
    final String FIND_IGNORE_CASE = "SELECT * FROM auth.users WHERE enabled=true and name LIKE '%' || :name || '%'" ;

    List<User> findAll();

    User findByUsername(String username);

    @Query(value = SELECT_ALL_PAGEABLE)
    List<User> findAllPageable(@Param("limit") long limit, @Param("offset") long offset );
    @Query(value = FIND_IGNORE_CASE)
    List<User> findByNameLikeIgnoreCase(@Param("name") String term);
}