package src.user;

import java.io.FileInputStream;

import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

public class test {

    public static void main(String[] args) {

        try {
            FileInputStream file = new FileInputStream("./excelLoginFile.xlsx");
            XSSFWorkbook workbook = new XSSFWorkbook(file);
            String userID = "2017116848";
            String userPassword = "684822";
            int rowindex=0;
            int cnt1=0;
            int cnt2=0;
            int columnindex=0;
            //시트 수 (첫번째에만 존재하므로 0을 준다)
            //만약 각 시트를 읽기위해서는 FOR문을 한번더 돌려준다
            XSSFSheet sheet=workbook.getSheetAt(0);
            //행의 수
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
                System.out.println("아이디 틀림");
            else if(cnt1!=0 &&cnt2==0)
                System.out.println("비밀번호 틀림");
            else
                System.out.println("로그인 성공!");
        }catch(Exception e) {
            e.printStackTrace();
        }

    }
}