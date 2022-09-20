package edu.yavirac.distributivobackend.feature.schedule;

import java.io.IOException;
import java.sql.Date;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public class ScheduleService {
    @Autowired
    private ScheduleRespository scheduleRespository;

    public Schedule findEventsSchedule(ScheduleOptionsConsultDto options){
        List<ScheduleConsult> scheduleConsults = ScheduleRespository.findAllFilteredEvents(options);
        List<HourEntity> hoursDatabase = scheduleRespository.findHours();
         
        Schedule schedule = new Schedule();

        schedule.setToFrom(generateDaysArray(options.getFrom(), options.getTo()));

        List<Hour> hours = new ArrayList<>();
        hoursDatabase.forEach((hourDatabase)->{
            Hour event = new Hour();
            event.setPosition(hourDatabase.getHour());
           
            List<Event> events = filterEventsOfHour(scheduleConsults, hourDatabase.getHour());
            
          event.setEvents(events);
          hours.add(event);
          schedule.setHours(hours);

        });
     

        return schedule;

    };

    

    private List<Event> filterEventsOfHour(List<ScheduleConsult> scheduleConsults, String hour ){
        List<Event> events = scheduleConsults.stream().map((eventConsult)->{
            Event currentEvent = new Event();
            if(eventConsult.getHour().equals(hour)){
                currentEvent.setClassroom(eventConsult.getClassroom());
                currentEvent.setDay(eventConsult.getDate());
                currentEvent.setHour(eventConsult.getHour());
                currentEvent.setSubject(eventConsult.getSubject());
                currentEvent.setGrade(eventConsult.getGrade());
                
                Teacher teacherEvent = new Teacher();
                teacherEvent.setName(eventConsult.getTeacher());
                teacherEvent.setColor(eventConsult.getColor());
                currentEvent.setTeacher(teacherEvent);
            }

            return currentEvent;

        }).collect(Collectors.toList());

        return events;

    }


    public void importExcel(MultipartFile files) throws IOException{

      

        try (XSSFWorkbook workbook = new XSSFWorkbook(files.getInputStream())) {
            XSSFSheet worksheet = workbook.getSheetAt(0);
     
            LocalDateTime localDateTime = LocalDateTime.of(2021, 12, 31, 0, 0);
            
            localDateTime = localDateTime.plusDays(365);
            for (int index = 2; index < worksheet.getPhysicalNumberOfRows(); index++) {
              
                    
                    
                    
                    XSSFRow row = worksheet.getRow(index);
                    if(row == null) break;
                    saveColumn(row);
                    
                   

                    
            }
           
        }
    }
    private void saveColumn(XSSFRow row){
        Map<String, String> dataValuesMap = new HashMap<>();
      
     
        addValuetoMap("period", dataValuesMap,row.getCell(0));
        addValuetoMap("career", dataValuesMap,row.getCell(1));
        addValuetoMap("classroom", dataValuesMap,row.getCell(2));
        addValuetoMap("date", dataValuesMap,row.getCell(3));
        addValuetoMap("hour", dataValuesMap,row.getCell(4));
        addValuetoMap("subject", dataValuesMap,row.getCell(5));
        //addValuetoMap("ced_doc", dataValuesMap,row.getCell(6));
        addValuetoMap("teacher", dataValuesMap,row.getCell(7));
        addValuetoMap("level", dataValuesMap,row.getCell(8));
        addValuetoMap("parallel", dataValuesMap,row.getCell(9));
        addValuetoMap("journalist", dataValuesMap,row.getCell(10));
       TimeConfiguration timeConfiguration = generateTimeConf(dataValuesMap);
       if(timeConfiguration != null)  scheduleRespository.save(timeConfiguration);
      
        


    }

    private TimeConfiguration generateTimeConf(Map<String, String> map){
        String grade =  map.get("level")+" " +map
        .get("journalist").charAt(0) + map
        .get("parallel")+"-"+map.get("career");
         Date date = Date.valueOf(map.get("date").replaceAll("/", "-"));
         
        String day = date.toLocalDate().getDayOfWeek().toString();

        TimeConfiguration timeConfiguration = new TimeConfiguration();
        

        ConsultIds idDis = scheduleRespository
        .getIdDisByParameters(map
        .get("teacher"), map.get("period"), map.get("subject"), grade, map
        .get("hour"), map.get("classroom"), day);
         

        timeConfiguration.setClassroom(idDis.getClassroom());
        timeConfiguration.setDate(Date.valueOf(map.get("date").replaceAll("/", "-")));
        
        timeConfiguration.setDay(idDis.getDay());
        timeConfiguration.setHour(idDis.getHour());
        timeConfiguration.setOccupiedBy(idDis.getId());
        timeConfiguration.setSchoolPeriod(idDis.getPeriod());
        
 
        
        return timeConfiguration;



    }

    private void addValuetoMap(String key,Map<String, String> map, XSSFCell cell ){
        if( cell != null ){
            map.put(key, cell.getStringCellValue());
        }

    }

    private List<Integer> generateDaysArray(String from, String to){
        String[] dateArray = from.split("-");

        LocalDate date = LocalDate.of(Integer
        .valueOf(dateArray[0]), Integer.valueOf(dateArray[1]), Integer.valueOf(dateArray[2]));

        List<Integer> days = new ArrayList<Integer>();
        days.add(date.getDayOfMonth());

        do
        {
         date = date.plusDays(1);
         if(date.toString().equalsIgnoreCase(to)) continue;
         days.add(date.getDayOfMonth());
        }
        while(!(date.toString().equalsIgnoreCase(to)));
        
   
       return days; 
    }
    
    
}
