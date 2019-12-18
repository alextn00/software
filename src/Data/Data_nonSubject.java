package Data;


import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import student.Student;

import java.io.FileInputStream;
import java.util.Arrays;

public class Data_nonSubject {

    Student user = Student.getInstance();
    private int counseling_number;
    private int field_credit; // #### class diagram 에 추가되어야 하는 attribute , (1,11) cell 에 있음


    private String[] field_content;
    private int examScore;

    private static Data_nonSubject data;

    public static Data_nonSubject getInstance(){
        if (data == null)
            data = new Data_nonSubject();
        return data;
    }

    public Student getUser() {
        return user;
    }

    public int getCounseling_number() {
        return counseling_number;
    }

    public int getField_credit() {
        return field_credit;
    }

    public int getExamScore() {
        return examScore;
    }

    public static Data_nonSubject getData() {
        return data;
    }

    public void setCounseling_number(int counseling_number) {
        this.counseling_number = counseling_number;
    }

    public void setField_credit(int field_credit) {
        this.field_credit = field_credit;
    }

    public void setExamScore(int examScore) {
        this.examScore = examScore;
    }

    public String[] getField_content() {
        return field_content;
    }

    public void setField_content(String[] field_content) {
        this.field_content = field_content;
    }

    Data_nonSubject() {
        /* 엑셀파일로부터 정보를 불러올 setter */
        read_alldata();
    }

    public void read_alldata() {

        try {
            FileInputStream file = new FileInputStream("/volume1/Tomcat/학생경력정보.xlsx");
            XSSFWorkbook workbook = new XSSFWorkbook(file);

            setCounseling_data(workbook);
            setEnglishScore_data(workbook);
            setFiledPractice_data(workbook);

        } catch (Exception e) {
            e.printStackTrace();
        }

    }


    public void setCounseling_data(XSSFWorkbook workbook) {

        XSSFSheet sheet_workbook = workbook.getSheetAt(0);     // sheet index

        boolean condition = true;
        int i = 1;

        while (condition) {
            XSSFRow row_workbook = sheet_workbook.getRow(i);             // row index
            XSSFCell cell_workbook = row_workbook.getCell(1);            // cell index
            if ((cell_workbook.getStringCellValue() + "").equals(user.getStudent_code()) == true) {
                XSSFSheet sheet_student = workbook.getSheetAt(i);     // sheet index
                XSSFRow row_student = sheet_student.getRow(1);             // row index
                XSSFCell cell_student = row_student.getCell(10);
                if(!("".equals(cell_student.getStringCellValue())))
                    setCounseling_number(Integer.parseInt(cell_student.getStringCellValue() + ""));
                condition = false;
            }
            i++;
        }

    }

    public void setFiledPractice_data(XSSFWorkbook workbook){

        XSSFSheet sheet_workbook = workbook.getSheetAt(0);     // sheet index

        boolean condition = true;
        int i = 1;
        int lineCnt=0;
        int fieldContent_cnt=-1;

        while (condition) {
            XSSFRow row_workbook = sheet_workbook.getRow(i);             // row index
            XSSFCell cell_workbook = row_workbook.getCell(1);            // cell index
            if ((cell_workbook.getStringCellValue() + "").equals(user.getStudent_code()) == true) {
                XSSFSheet sheet_student = workbook.getSheetAt(i);     // sheet index
                XSSFRow row_student = sheet_student.getRow(1);             // row index
                lineCnt=2;
                XSSFCell cell_student = row_student.getCell(9);            // cell index
                if(!("".equals(cell_student.getStringCellValue())))
                    setField_credit( this.field_credit = Integer.parseInt(cell_student.getStringCellValue() + ""));

                this.setField_content(ary_setter(workbook,i,9));


                /*
                row_student=sheet_student.getRow(lineCnt);
                cell_student=row_student.getCell(9);
                while(!("".equals(cell_student.getStringCellValue()))){
                    this.setField_content(cell_student.getStringCellValue(),++fieldContent_cnt);
                    row_student=sheet_student.getRow(++lineCnt);
                    cell_student=row_student.getCell(9);
                }*/



                condition = false;
            }
            i++;
        }
    }

    public void setEnglishScore_data(XSSFWorkbook workbook){

        XSSFSheet sheet_workbook = workbook.getSheetAt(0);     // sheet index

        boolean condition = true;
        int i = 1;

        while (condition) {
            XSSFRow row_workbook = sheet_workbook.getRow(i);             // row index
            XSSFCell cell_workbook = row_workbook.getCell(1);            // cell index
            if ((cell_workbook.getStringCellValue() + "").equals(user.getStudent_code()) == true) {
                XSSFSheet sheet_student = workbook.getSheetAt(i);     // sheet index
                XSSFRow row_student = sheet_student.getRow(1);             // row index
                XSSFCell cell_student = row_student.getCell(8);            // cell index
                if(!("".equals(cell_student.getStringCellValue())))
                    setExamScore(Integer.parseInt(cell_student.getStringCellValue() + ""));
                condition = false;
            }
            i++;
        }
    }

    private String[] ary_setter(XSSFWorkbook workbook, int sheetnum, int columnnum){
        /* 엑셀파일로부터 정보를 불러올 setter */

        String[] value = new String[100];
        int i=1;

        try {
            XSSFSheet sheet=workbook.getSheetAt(sheetnum);     // sheet index

            int rows = sheet.getPhysicalNumberOfRows();

            for(i=2; i<rows; i++){
                XSSFRow row=sheet.getRow(i);              // row index
                XSSFCell cell = row.getCell(columnnum);             // cell index
                if(cell.getStringCellValue() == "")
                    break;
                value[i-1] = cell.getStringCellValue()+"";
            }

        }catch(Exception e) {
            e.printStackTrace();
        }
        String[] real_value = Arrays.copyOfRange(value, 0, i-1);
        return real_value;
    }

}

