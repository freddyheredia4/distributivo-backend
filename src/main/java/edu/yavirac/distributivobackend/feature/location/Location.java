package edu.yavirac.distributivobackend.feature.location;

import lombok.Data;
import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.Column;
import org.springframework.data.relational.core.mapping.Table;

@Data
@Table("public\".\"locations")
public class Location {
    @Id
    @Column("id")
    private String name;
    private String coordinates;
}