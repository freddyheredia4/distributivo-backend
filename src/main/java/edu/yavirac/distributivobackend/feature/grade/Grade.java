package edu.yavirac.distributivobackend.feature.grade;

import java.util.HashSet;
import java.util.Set;

import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.Column;
import org.springframework.data.relational.core.mapping.MappedCollection;
import org.springframework.data.relational.core.mapping.Table;

import lombok.Data;

@Data
@Table("grade")
public class Grade {
    @Id
    @Column("id")
    private long id;
    @Column("working_day")
    private String workingDay;
    private String level;
    private String parallel;
}
