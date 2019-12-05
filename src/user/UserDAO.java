package src.user;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;

import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
public class UserDAO {
    private XSSFWorkbook workbook;
    public UserDAO() throws IOException {

    }
    // 로그인을 시도하는 함수****
    public int login(String userID, String userPassword) throws IOException {

       FileInputStream file = new FileInputStream("/volume1/Tomcat/1130ver12/excelLoginFile.xlsx");
        workbook = new XSSFWorkbook(file);
        int cnt1 = 0;
        int cnt2 = 0;
        int rowindex=0;
        int columnindex=0;
        try {
            XSSFSheet sheet=workbook.getSheetAt(0);
            int rows=sheet.getPhysicalNumberOfRows();
            for(rowindex=0;rowindex<rows;rowindex++){
                //행을읽는다
                XSSFRow row=sheet.getRow(rowindex);
                if(row !=null){
                    //셀의 수
                    int cells=row.getPhysicalNumberOfCells();
                    for(columnindex=0; columnindex<=cells; columnindex++){
                        //셀값을 읽는다
                        XSSFCell cell=row.getCell(columnindex);
                        String value="";
                        //셀이 빈값일경우를 위한 널체크
                        if(cell==null){
                            continue;
                        }else{
                            switch (cell.getCellType()){
                                case NUMERIC:
                                    int i = (int)cell.getNumericCellValue();
                                    value = Integer.toString(i);
                                    break;
                            }
                        }
                        if(value.equals(userID)){
                            cnt1++;
                            columnindex++;
                            XSSFCell cell2=row.getCell(columnindex);
                            if(cell2==null){
                                continue;
                            }else{
                                //타입별로 내용 읽기
                                switch (cell2.getCellType()){
                                    case FORMULA:
                                        value=cell2.getCellFormula();
                                        break;
                                    case NUMERIC:
                                        value=cell2.getNumericCellValue()+"";
                                        break;
                                    case STRING:
                                        value=cell2.getStringCellValue()+"";
                                        break;
                                    case BLANK:
                                        value=cell2.getBooleanCellValue()+"";
                                        break;
                                    case ERROR:
                                        value=cell2.getErrorCellValue()+"";
                                        break;
                                }
                            }
                            if(value.equals(userPassword)){
                                cnt2++;
                            }
                        }
                    }
                }
            }
            if(cnt1==0 && cnt2 == 0)
                return -1; //no ID
            else if(cnt1!=0 &&cnt2==0)
                return 0; // ID correct, password wrong
            else
                return 1; //login success
        } catch (Exception e) {
            e.printStackTrace();
        }
        return -2; // error
    }
}

