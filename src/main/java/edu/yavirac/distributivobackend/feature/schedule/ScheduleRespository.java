package edu.yavirac.distributivobackend.feature.schedule;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import edu.yavirac.distributivobackend.config.Conexion;
import edu.yavirac.distributivobackend.util.NumberUtils;
import edu.yavirac.distributivobackend.util.StringUtils;

@Repository
public interface ScheduleRespository extends CrudRepository<TimeConfiguration, Long> {
    final String SELECT_BY_TEACHER = "SELECT cl.name classroom ,d.posicion day_number,ht.time_position, tc.id, teacher.name as teacher,grade.name grade, subject.name subject,periood.name period,teacher.color, tc.date, d.name, ht.hour FROM teacher_distributive dis  JOIN school_period periood ON periood.id = dis.school_time  JOIN teacher ON teacher.id = dis.teacher  JOIN subject ON subject.id = dis.course  JOIN grade ON grade.id = dis.grade  JOIN time_configuration tc ON dis.id = tc.occupied_by JOIN hours_table ht ON ht.id = tc.hour JOIN day d ON d.id = tc.day  JOIN classrooms cl ON cl.id=tc.classroom  WHERE tc.status=true";

    final String GET_SCHEDULE_EVENTS = "SELECT * FROM schedule";
    final String GET_HOURS = "SELECT * FROM hours_table";

    @Query(GET_SCHEDULE_EVENTS)
    List<ScheduleConsult> findScheduleEvents();

    @Query(GET_HOURS)
    public List<HourEntity> findHours();

    public static List<ScheduleConsult> findAllFilteredEvents(ScheduleOptionsConsultDto params) {
        
        List<ScheduleConsult> scheduleConsults = new ArrayList<>();
        try {
            Connection connection = Conexion.getConnetion();
            StringBuilder query = new StringBuilder(SELECT_BY_TEACHER);
            
            if(!StringUtils.isNullOrEmpty(params.getFrom())){
                query.append(" AND tc.date >='").append(params.getFrom()).append("'");
            }

            if(!StringUtils.isNullOrEmpty(params.getTo())){
                query.append(" AND tc.date <='").append(params.getTo()).append("'");
            }

            if(!NumberUtils.isNullOrEmpty(params.getPeriood())){
                query.append(" AND periood.id=").append(params.getPeriood());
                
            }
            if(!NumberUtils.isNullOrEmpty(params.getGrade()) ){
                query.append(" AND grade.id=").append(params.getGrade());
                
            }
            if(!NumberUtils.isNullOrEmpty(params.getTeacher()) ){
                query.append(" AND teacher.id=").append(params.getTeacher());
                
            }
            
            if(!NumberUtils.isNullOrEmpty(params.getClassroom()) ){
                query.append(" AND cl.id=").append(params.getClassroom());
                
            }
            System.out.println(query);

            PreparedStatement preparedStatement = connection.prepareStatement(query.toString());
            ResultSet resultSet = preparedStatement.executeQuery();

            while(resultSet.next()){
                ScheduleConsult scheduleConsult = new ScheduleConsult();

                scheduleConsult.setId(resultSet.getLong("id"));
                scheduleConsult.setClassroom(resultSet.getString("classroom"));
                scheduleConsult.setDayNumber(resultSet.getString("day_number"));
                scheduleConsult.setHour(resultSet.getString("hour"));
                scheduleConsult.setDate(resultSet.getString("date"));
                scheduleConsult.setName(resultSet.getString("name"));
                scheduleConsult.setColor(resultSet.getString("color"));
                scheduleConsult.setGrade(resultSet.getString("grade"));
                scheduleConsult.setPeriod(resultSet.getString("period"));
                scheduleConsult.setSubject(resultSet.getString("subject"));
                scheduleConsult.setTeacher(resultSet.getString("teacher"));

                scheduleConsults.add(scheduleConsult);

            }
        }catch(SQLException err){
          throw new Error(err);
        }
          return scheduleConsults;
        }
    
}
