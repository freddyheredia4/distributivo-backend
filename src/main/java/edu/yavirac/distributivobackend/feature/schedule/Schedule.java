package edu.yavirac.distributivobackend.feature.schedule;
import java.util.List;
import lombok.Data;

@Data
public class Schedule {
    private long from;
    private long to;
    private String month;
    private List<Hour> hours;
}
