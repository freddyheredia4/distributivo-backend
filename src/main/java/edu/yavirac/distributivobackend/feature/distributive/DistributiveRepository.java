package edu.yavirac.distributivobackend.feature.distributive;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

public interface DistributiveRepository extends CrudRepository<Distributive, Long> {

    final String SELECT_DISTRIBUTIVE = "SELECT dis.id, teacher.dni as teacher_cedula, teacher.name as teacher, teacher.lastname as teacher_apellido, grade.name as grade, subject.name subject,periood.name period FROM teacher_distributive dis JOIN school_period periood ON periood.id = dis.school_time JOIN teacher ON teacher.id = dis.teacher JOIN subject ON subject.id = dis.course JOIN grade ON grade.id = dis.grade";

    final String SELECT_DISTRIBUTIVE_ID = "SELECT dis.id, teacher.dni as teacher_cedula, teacher.name as teacher, teacher.lastname as teacher_apellido, grade.name as grade, subject.name subject,periood.name period FROM teacher_distributive dis JOIN school_period periood ON periood.id = dis.school_time JOIN teacher ON teacher.id = dis.teacher JOIN subject ON subject.id = dis.course JOIN grade ON grade.id = dis.grade WHERE dis.id=:id";

    final String SELECT_TEACHER_ID = "SELECT dis.id, teacher.dni as teacher_cedula, teacher.name as teacher, teacher.lastname as teacher_apellido, grade.name as grade, subject.name subject,periood.name period FROM teacher_distributive dis JOIN school_period periood ON periood.id = dis.school_time JOIN teacher ON teacher.id = dis.teacher JOIN subject ON subject.id = dis.course JOIN grade ON grade.id = dis.grade WHERE teacher.id=:id";

    final String SELECT_TEACHER_DNI = "SELECT dis.id, teacher.dni as teacher_cedula, teacher.name as teacher, teacher.lastname as teacher_apellido, grade.name as grade, subject.name subject,periood.name period FROM teacher_distributive dis JOIN school_period periood ON periood.id = dis.school_time JOIN teacher ON teacher.id = dis.teacher JOIN subject ON subject.id = dis.course JOIN grade ON grade.id = dis.grade WHERE teacher.name LIKE '%' || :name || '%' ";

    @Query(SELECT_DISTRIBUTIVE)
    List<DistributiveDTO>findAllDistibutive();

    @Query(SELECT_DISTRIBUTIVE_ID)
    Optional<DistributiveDTO>findByIdDistributive(@Param("id") Long id);

    @Query(SELECT_TEACHER_ID)
    Optional<DistributiveDTO>findByTeacherId(@Param("id") Long id);

    @Query(SELECT_TEACHER_DNI)
    List<DistributiveDTO>findByTeacherLikeIgnoreCase(@Param("id") String name);


}