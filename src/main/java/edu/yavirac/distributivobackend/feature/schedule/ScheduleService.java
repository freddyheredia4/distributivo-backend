package edu.yavirac.distributivobackend.feature.schedule;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

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
        schedule.setFrom(Integer.parseInt(options.getFrom().split("-")[2]));
        schedule.setTo(Integer.parseInt(options.getTo().split("-")[2]));

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
                currentEvent.setDay(eventConsult.getDayNumber());
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

            for (int index = 1; index < worksheet.getPhysicalNumberOfRows(); index++) {
                if (index > 0) {
                    TimeConfiguration timeConfiguration = new TimeConfiguration();

                    XSSFRow row = worksheet.getRow(index);
                    System.out.println(row.getCell(0).getStringCellValue());
                    //location.setName(row.getCell(0).getStringCellValue());
                    //location.setDescription(row.getCell(1).getStringCellValue());
                    //location.setLatitude(Math.round(row.getCell(2).getNumericCellValue()));
                    //location.setLongitude(Math.round(row.getCell(3).getNumericCellValue()));

                    
                }
            }
        }
    }
    
}
