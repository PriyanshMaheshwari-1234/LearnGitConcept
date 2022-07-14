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
import com.ctl.it.qa.staf.Steps;

import cucumber.api.Scenario;
import cucumber.api.java.Before;
import net.thucydides.core.annotations.Step;

import com.ctl.it.qa.eshop.common.utils.GlobalVariables;
import java.util.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;



public class screenshotSteps extends Steps {

	private final Logger slf4jLogger = LoggerFactory.getLogger(screenshotSteps.class);
	LoginPage loginPage;
	GlobalVariables gv = new GlobalVariables();
		
	int n =0;

	@Step
	public void take_Screenshot(String scen) {
		String sce_name = scen;
		
			try {
			WebDriver dr = loginPage.getDriver();
			System.out.println("**************");
			DateFormat df = new SimpleDateFormat("dd-MM-yy HH-mm-ss");
		    Date dateobj = new Date();
		    //   System.out.println(df.format(dateobj));

		       String testdate = scen+df.format(dateobj);
		      // System.out.println(testdate);
		       slf4jLogger.info("Format of file");
			
			//System.out.println(dr);
			
			File scrFile = ((TakesScreenshot)dr).getScreenshotAs(OutputType.FILE);
			FileUtils.copyFile(scrFile, new File("./ScreenShots/"+ scen +"--"+df.format(dateobj)+n +".jpg"));
			//System.out.println(scen +""+df.format(dateobj));
			//FileUtils.copyFile(scrFile, new File("./ScreenShots/"+ scen+"--"+n +".jpg"));
			n++;
			//slf4jLogger.info("The Value of N is -:" +n);
			
			slf4jLogger.info("Screenshot taken sucessfully");
		} catch (Exception e) {
				}
	}

			
	
	
}