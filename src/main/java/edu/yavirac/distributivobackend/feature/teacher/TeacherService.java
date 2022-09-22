package edu.yavirac.distributivobackend.feature.teacher;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import edu.yavirac.distributivobackend.util.ExcelGenerator;
import java.util.Arrays;

@Service
public class TeacherService {
    @Autowired
    TeacherRepository teacherRepository;

    public List<Teacher> findAll(){
        return teacherRepository.findAll();
    }

    public Teacher save(Teacher teacher ){
        return teacherRepository.save(teacher);
    }

    public Teacher findById(long id){
        return teacherRepository.findById(id).orElse(new Teacher());
    }

    public List<Teacher> findByNameLikeIgnoreCase( String term ){
        return teacherRepository.findByNameLikeIgnoreCase(term + "%");
    }

    public void generateExcelFile(HttpServletResponse response) throws IOException{
        response.setContentType("application/octet-stream");
        String headerKey = "Content-Disposition";
        String headerValue = "attachment; filename=location.xlsx";
        response.setHeader(headerKey, headerValue);
        List<String> rows  = Arrays.asList("Dni", "Name", "Color", "Email");
        ExcelGenerator excelGenerator = new ExcelGenerator();
        excelGenerator.generateExcelFile(response, rows);
    }
    
    public List<Teacher> importExcel(MultipartFile files) throws IOException{
        List<Teacher> teacherList = new ArrayList<>();

        try (XSSFWorkbook workbook = new XSSFWorkbook(files.getInputStream())) {
            XSSFSheet worksheet = workbook.getSheetAt(0);

            for (int index = 0; index < worksheet.getPhysicalNumberOfRows(); index++) {
                if (index > 0) {
                    Teacher teacher = new Teacher();

                    XSSFRow row = worksheet.getRow(index);

                    teacher.setDni(row.getCell(0).getStringCellValue());
                    teacher.setName(row.getCell(1).getStringCellValue());
                    teacher.setColor(row.getCell(2).getStringCellValue());
                    teacher.setEmail(row.getCell(3).getStringCellValue());
                
                    teacherList.add(teacherRepository.save(teacher));
                    
                }
            }
        }
        return teacherList;
    }
    
}
