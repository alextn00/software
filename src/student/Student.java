package student;

import Data.*;

import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import java.io.*;

public class Student { // singleTorn

    private static Student student;

    private String track;
    private String student_code;
    private String pw;
    private String user_name;
    private String birthday;
    private String email;


    public Student() {
        this.track = "public student return";
        this.student_code = "";
        this.pw = "";
        this.user_name="";
        this.birthday="";
        this.email="";
    }

    public static Student getInstance() {
        if (student == null)
            student = new Student();
        return student;
    }

    public void getData() { // 학생의 name에 맞게 액셀파일에서 정보를 불러오는 메소드
        Data_nonSubject nonSubject=Data_nonSubject.getInstance();
        data_curriculum curriculum=data_curriculum.getInstance();
        graduation_requirement graduationData = graduation_requirement.getInstance();
    }

    public static Student getStudent() {
        return student;
    }

    public static void setStudent(Student student) {
        Student.student = student;
    }

    public String getTrack() {
        return this.track;
    }

    public void setUserInformation() {

        try {
            FileInputStream file = new FileInputStream("/volume1/Tomcat/학생경력정보.xlsx");
            XSSFWorkbook workbook = new XSSFWorkbook(file);

            XSSFSheet sheet = workbook.getSheetAt(0);     // sheet index
            int rows = sheet.getPhysicalNumberOfRows(); // 해당 시트의 행의 개수
            for (int rowIndex = 0; rowIndex < rows; rowIndex++) {
                XSSFRow row = sheet.getRow(rowIndex); // 각 행을 읽어온다
                if (row != null) {
                    XSSFCell cell = row.getCell(1);//학번 비교하기
                    String value = cell.getStringCellValue() + "";

                    if (value.equals(student_code)) {
                        XSSFCell num_cell = row.getCell(0);//몇번째 시트인지 찾기
                        String work_value = num_cell.getStringCellValue() + "";
                        XSSFSheet work_sheet = workbook.getSheetAt(Integer.parseInt(work_value));//시트 도착
                        XSSFRow work_row = work_sheet.getRow(1);             // row index
                        XSSFCell work_cell = work_row.getCell(0);
                        this.setTrack(work_cell.getStringCellValue() + "");
                        work_cell = work_row.getCell(17);
                        this.setUser_name(work_cell.getStringCellValue() + "");
                        work_cell = work_row.getCell(18);
                        this.setBirthday(work_cell.getStringCellValue() + "");
                        work_cell = work_row.getCell(19);
                        this.setEmail(work_cell.getStringCellValue() + "");
                        break;
                    }
                }
            }

        }
        catch(Exception e){
            e.printStackTrace();
        }

    }

    public String getStudent_code() {
        return student_code;
    }

    public void setStudent_code(String student_code) {
        this.student_code = student_code;
    }

    public String getPw() {
        return pw;
    }

    public void setPw(String pw) {
        this.pw = pw;
    }

    public void setTrack(String track) { this.track = track; }

    public String getUser_name() {return user_name; }

    public void setUser_name(String user_name) { this.user_name = user_name; }

    public String getBirthday() { return birthday; }

    public void setBirthday(String birthday) { this.birthday = birthday; }
    public String getEmail() { return email; }

    public void setEmail(String email) { this.email = email; }
}
