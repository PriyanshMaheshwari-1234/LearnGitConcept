package testCases;

import java.awt.AWTException;
import java.awt.Robot;
import java.awt.event.KeyEvent;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.time.Duration;
import java.util.Iterator;
//import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeUnit;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

public class HandleData {

	
	public static void main(String[] args) throws IOException, AWTException {
		WebDriver driver = new ChromeDriver();
		//driver.manage().timeouts().pageLoadTimeout(3, TimeUnit.SECONDS);
		//driver.manage().timeouts().implicitlyWait(30, TimeUnit.SECONDS);
		driver.manage().timeouts().implicitlyWait(Duration.ofSeconds(30));
		
		WebDriverWait wait = new WebDriverWait(driver,Duration.ofSeconds(30));
		wait.until(ExpectedConditions.presenceOfElementLocated(By.xpath("ee")));
		
		
		
		Actions act = new Actions(driver);
		act.clickAndHold().build().perform();
		
		
		driver.findElements(By.tagName("a")).get(1).sendKeys(Keys.chord(Keys.CONTROL,Keys.ENTER));
		
		Robot rb= new Robot();
		rb.keyPress(KeyEvent.VK_CONTROL);
		rb.keyPress(KeyEvent.VK_T);
		rb.keyRelease(KeyEvent.VK_CONTROL);
		rb.keyRelease(KeyEvent.VK_T);
		
		FileInputStream fis = new FileInputStream("C:\\Users\\PriyanshMaheshwari\\Desktop\\CTL_testing\\DataDrivenTesting.xlsx");

		XSSFWorkbook workBook = new XSSFWorkbook(fis);

		int sheetNum = workBook.getNumberOfSheets();

		for (int i = 0; i < sheetNum; i++) {
			if (workBook.getSheetName(i).equalsIgnoreCase("testcase")) {

				XSSFSheet sheet = workBook.getSheetAt(i);
				int totalRows = sheet.getLastRowNum();
				/*for(int j=0;j<totalRows;j++) {
					Row row=sheet.getRow(j);
					System.out.println(row);*/
					
					
				 Iterator<Row> rows=   sheet.rowIterator();
				 
				 for(int m=0;m<totalRows;m++) {
					 int n=0;
				 Row firstRow=rows.next();
				 Cell value=firstRow.getCell(n);
				/*Iterator<Cell> ce= firstRow.cellIterator();
				while(ce.hasNext()) {
					Cell value=ce.next();*/
				System.out.println(value.getStringCellValue());	
					n++;
					
					
					
					
					
				}}}
			}

		}

	


