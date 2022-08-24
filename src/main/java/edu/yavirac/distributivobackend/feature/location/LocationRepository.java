package edu.yavirac.distributivobackend.feature.location;
import java.util.List;

import org.springframework.data.repository.CrudRepository;

public interface LocationRepository extends CrudRepository<Location,Long> {
    List<Location> findAll();
    List<Location> findByNameLikeIgnoreCase(String name);

}