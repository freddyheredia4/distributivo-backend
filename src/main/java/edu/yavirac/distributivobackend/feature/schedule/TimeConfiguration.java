package edu.yavirac.distributivobackend.feature.schedule;

import lombok.Data;

@Data
public class TimeConfiguration {
    private Long id;
    private Integer schoolPeriod; 
    private Integer classroom;
    private Integer day;
    private String date;
    private Integer hour; 
    private Integer occupiedBy; 
    private boolean status; 
    private String color;
}
