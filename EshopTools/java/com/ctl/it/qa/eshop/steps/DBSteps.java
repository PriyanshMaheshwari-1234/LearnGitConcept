package com.ctl.it.qa.eshop.steps;

//import com.ctl.it.qa.eshop.common.utils;


import net.serenitybdd.core.pages.PageObject;

import java.io.File;

import org.apache.commons.io.FileUtils;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import org.openqa.selenium.WebDriver;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.ctl.it.qa.eshop.pages.LoginPage;
import com.ctl.it.qa.eshop.pages.OrderSummaryPage;
import com.ctl.it.qa.staf.Steps;

import au.com.bytecode.opencsv.CSVWriter;
import cucumber.api.Scenario;
import cucumber.api.java.Before;
import net.thucydides.core.annotations.Step;

import com.ctl.it.qa.eshop.common.utils.GlobalVariables;
import com.ctl.it.qa.eshop.common.utils.ValidateMongoDBOp;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.net.URI;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.junit.Assert;
import org.slf4j.LoggerFactory;

import com.ctl.it.qa.staf.Steps;
import io.restassured.RestAssured;
import io.restassured.response.Response;
import io.restassured.specification.RequestSpecification;
import net.thucydides.core.annotations.Step;



public class DBSteps extends Steps {

	private final Logger slf4jLogger = LoggerFactory.getLogger(LoginSteps.class);
	
	OrderSummaryPage orderSummaryPage;
	public static String accountnum;
	public static String ordernum;
	
	@Step
	public void validate_Scenariobased_DB_data(String filelocation1, double testid, String scen) throws IOException{
		orderSummaryPage.shouldBeVisible(orderSummaryPage.orderNumberText);
		// Nitish
		String fullOrdernum = orderSummaryPage.orderNumberText.getText();
		int lastindexor = fullOrdernum.toCharArray().length;
		ordernum = fullOrdernum.substring(13, lastindexor);
		String fullAccountnum = orderSummaryPage.accountNumberText.getText();
		int lastindexac = fullAccountnum.toCharArray().length;
		accountnum = fullAccountnum.substring(15, lastindexac);
		slf4jLogger.info("order number = " + fullOrdernum);
		slf4jLogger.info("account number = " + fullAccountnum);
		slf4jLogger.info("Cleaned order number = " + ordernum);
		slf4jLogger.info("Cleaned account number = " + accountnum);
		
		String scenario = scen;
		//accountnum = "AC908093274";
		//ordernum = "1000152598";
		
		//accountnum = "3036944572";  //--- Verified with Interrupting working correctly
		//ordernum = "1000088505";
		
		//accountnum = "4023598752";  //--- Verified with Non - Interrupting working correctly
		//ordernum = "1000017373";
		
		//accountnum = "4023301065";  //--- Verified with Non - Interrupting working correctly
		//ordernum = "1000088583";
		
	
		write_csv_orderdata(ordernum, accountnum, scenario);
		updatedata(filelocation1,testid, ordernum, accountnum);
		
	
}


public static void write_csv_orderdata(String fullOrdernum, String fullAccountnum, String scen) throws IOException {   
		
	DateFormat df = new SimpleDateFormat("dd-MM-yy HH-mm-ss");
    Date dateobj = new Date();
    
		String filepath = "./OrderDetails/OrderDetails_data.csv"; 
	      CSVWriter writer = new CSVWriter(new FileWriter(filepath,true));
	     String line6[] = {scen,fullOrdernum ,fullAccountnum, df.format(dateobj) };
	      writer.writeNext(line6);
	      writer.flush();
	      System.out.println("Data added sucessfully");
	   }	
	
public List<Boolean> updatedata(String filelocation1, double testid, String ordernum, String accountnum) throws IOException {
		
		ValidateMongoDBOp mongoDB = new ValidateMongoDBOp();
		Map<String, Object> keyValeMap = new HashMap<>();
		List<String> dbDetails = new ArrayList<>();
		List<Boolean> booleanFlag = new ArrayList<>();
		try {
			FileInputStream file = new FileInputStream(new File(filelocation1));
			// Create Workbook instance holding reference to .xlsx file
			XSSFWorkbook workbook = new XSSFWorkbook(file);
			// Get first/desired sheet from the workbook
			XSSFSheet sheet = workbook.getSheetAt(0);
			// Iterate through each rows one by one
			
			Iterator<Row> rowIterator = sheet.rowIterator();
			while (rowIterator.hasNext()) {
				Row row = rowIterator.next();
				if (row.getRowNum() == 0) {
					continue;
				}
				// For each row, iterate through all the columns
				Iterator<Cell> cellIterator = row.cellIterator();
				Cell cell1 = cellIterator.next();
				Object objexl = cell1.getNumericCellValue();
				if (testid == (double)objexl) {
					
					System.out.println("Value is correct we can proceed for other cell");
				
				while (cellIterator.hasNext()) {
					Cell cell = cellIterator.next();
					
					Object obj = cell.getStringCellValue();
					String str = (String) obj;
					if (str.contains(":")) {
						String splitArr[] = str.split(":");
						
						String str1 = splitArr[1].trim();
						if(str1.contains("VALUE")) {
							str1 = str1.replace("VALUE", ordernum.trim());
							System.out.println(str1);
							//keyValeMap.put(splitArr[0].trim(), splitArr[1].trim());
							keyValeMap.put(splitArr[0].trim(), str1);	
						}
						else {
							keyValeMap.put(splitArr[0].trim(), str1);
						}
							
					} else {
						dbDetails.add(str);
					}
				}
			}
				else {
					continue;
				}
				// Assertion verify
				Boolean validateFlag = mongoDB.validateInsert(dbDetails.get(0).trim(), dbDetails.get(1).trim(), keyValeMap);
				booleanFlag.add(validateFlag);
				
				Assert.assertEquals(validateFlag, false);
				if(validateFlag==false)
				{
					System.out.println("Successfully validated Database : "+dbDetails.get(0)+" and Collection : "+dbDetails.get(1));
					slf4jLogger.info("Screenshot validated Database"+dbDetails.get(0)+" and Collection : "+dbDetails.get(1));
				}else{
					System.out.println("Validation Failed for Database : "+dbDetails.get(0)+" and Collection : "+dbDetails.get(1));
					slf4jLogger.info("Validation Failed for Database : "+dbDetails.get(0)+" and Collection : "+dbDetails.get(1));
									}
				
                // clear the collections
				keyValeMap.clear();
				dbDetails.clear();
			}
			
			file.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println("Booleans :: "+booleanFlag);
		slf4jLogger.info("Validation Failed for Database"+booleanFlag);
		return booleanFlag;
	}

}

			
	
	
