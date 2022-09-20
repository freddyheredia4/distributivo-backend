package edu.yavirac.distributivobackend.feature.schedule;

import java.sql.Date;

import org.springframework.data.annotation.Id;

import lombok.Data;

@Data
public class TimeConfiguration {
    @Id
    private Long id;
    private Integer schoolPeriod; 
    private Integer classroom;
    private Integer day;
    private Date date;
    private Integer hour; 
    private Integer occupiedBy; 
    private boolean status = true; 
    private String color;
}
