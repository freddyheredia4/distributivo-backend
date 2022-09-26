package edu.yavirac.distributivobackend.feature.career;

import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.Table;

import lombok.Data;

@Data
@Table("career")
public class Career {
    @Id
    private long id;
    private String name;
    private Long duration;
    private String img;
    private boolean status;   
}
