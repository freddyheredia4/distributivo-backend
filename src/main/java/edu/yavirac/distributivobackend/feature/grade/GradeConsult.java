package edu.yavirac.distributivobackend.feature.grade;
import org.springframework.data.relational.core.mapping.Column;

import lombok.Data;

@Data
public class GradeConsult {
    private Long id;
    private Long type;
    private Long location;
    private String name;
    private Long capacity;
    @Column(value = "location_name")
    private String locationName;
    @Column(value = "type_name")
    private String typeName; 
    private boolean status =  true;
    private String description;
    
}
