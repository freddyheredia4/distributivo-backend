package edu.yavirac.distributivobackend.feature.location;
import java.util.List;

import lombok.Data;

@Data()
public class LocationDTO {
    private long total;
    private long page;
    private long count;
    private long capacity;
    private List<Location> locations;
}
