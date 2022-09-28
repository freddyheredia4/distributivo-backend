package edu.yavirac.distributivobackend.feature.distributive;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface DistributiveRepository extends CrudRepository<Distributive, Long> {
    
    final String SELECT_TEACHER = "SELECT dis.id, teacher.dni as teacher_cedula, teacher.name as teacher, teacher.lastname as teacher_apellido, grade.name as grade, subject.name subject,periood.name period FROM teacher_distributive dis JOIN school_period periood ON periood.id = dis.school_time JOIN teacher ON teacher.id = dis.teacher JOIN subject ON subject.id = dis.course JOIN grade ON grade.id = dis.grade";
    
    final String SELECT_TEACHER_ID = "SELECT dis.id, teacher.dni as teacher_cedula, teacher.name as teacher, teacher.lastname as teacher_apellido, grade.name as grade, subject.name subject,periood.name period FROM teacher_distributive dis JOIN school_period periood ON periood.id = dis.school_time JOIN teacher ON teacher.id = dis.teacher JOIN subject ON subject.id = dis.course JOIN grade ON grade.id = dis.grade WHERE id=:id";
    
    final String SELECT_FOR_TEACHER_ID = "SELECT dis.id, teacher.dni as teacher_cedula, teacher.name as teacher, teacher.lastname as teacher_apellido, grade.name as grade, subject.name subject,periood.name period FROM teacher_distributive dis JOIN school_period periood ON periood.id = dis.school_time JOIN teacher ON teacher.id = dis.teacher JOIN subject ON subject.id = dis.course JOIN grade ON grade.id = dis.grade WHERE teacher.id=:id";  
    
    final String SELECT_FOR_TEACHER_NAME = "SELECT dis.id, teacher.color,teacher.dni as teacher_cedula, teacher.name as teacher, teacher.lastname as teacher_apellido, grade.name as grade, subject.name subject,periood.name period FROM teacher_distributive dis JOIN school_period periood ON periood.id = dis.school_time JOIN teacher ON teacher.id = dis.teacher JOIN subject ON subject.id = dis.course JOIN grade ON grade.id = dis.grade WHERE teacher.name ~* :name ";
    final String SELECT_FOR_EMAIL = "SELECT dis.id , teacher.color, teacher.dni as teacher_cedula, teacher.name as teacher, teacher.lastname as teacher_apellido, grade.name as grade, subject.name subject,periood.name period FROM teacher_distributive dis JOIN school_period periood ON periood.id = dis.school_time JOIN teacher ON teacher.id = dis.teacher JOIN subject ON subject.id = dis.course JOIN grade ON grade.id = dis.grade WHERE teacher.email ~*  :email";

    @Query( SELECT_TEACHER )
    List<DistributiveDTO>findAllDistibutive();
    @Query( SELECT_FOR_TEACHER_ID )
    List<DistributiveDTO>findByTeacher(@Param("id") Long id);
    @Query( SELECT_TEACHER_ID )
    Optional<DistributiveDTO>findByIdDto(@Param("id") Long id);
    @Query( SELECT_FOR_TEACHER_NAME )
    List<DistributiveDTO>findByName(@Param("name") String name);
    @Query(SELECT_FOR_EMAIL)
    List<DistributiveDTO>findByEmail(@Param("email") String email);

}