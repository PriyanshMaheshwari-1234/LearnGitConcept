package com.ctl.it.qa.eshop.steps;

import com.ctl.it.qa.eshop.pages.DisconnectPage;
import com.ctl.it.qa.staf.Steps;

import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import net.thucydides.core.annotations.Step;

public class DisconnectSteps extends Steps{

    private final Logger slf4jLogger = LoggerFactory.getLogger(DisconnectSteps.class);
    DisconnectPage disconnectpage;
    OrderSummarySteps orderSummarySteps;
           
    
    @Step
    public void enterInternetdisconnectreason()
    {      waitABit(5000);
           disconnectpage.DISHSIReasonBS.waitUntilClickable();
           disconnectpage.DISHSIReasonBS.click();
           waitABit(5000);
           slf4jLogger.info("HSI DIS Connect Reason is selected successfully");
           
    }
    
    @Step
    public void enterPotsdisconnectreason()
    {
           disconnectpage.DISPhReasonBS.waitUntilClickable();
           disconnectpage.DISPhReasonBS.click();
           slf4jLogger.info("POTS DIS Connect Reason is selected successfully");
    }
      
    
    @Step
    public void clickoncontinue()
    {
    	 waitABit(2000);
         disconnectpage.DISContinue.waitUntilClickable();
         disconnectpage.DISContinue.click();
         waitABit(15000);
         slf4jLogger.info("Clicked on Continue on DIS reason page");
         
           
    }
    
    @Step
    public void clickoncontinue02()
    {
           disconnectpage.DISContinue02.click();
           slf4jLogger.info("Clicked on Continue on Product and Service");
           
    }
    
    @Step
    public void clickoncontinueonacountinformation()
    {
    	   WebDriverWait wait =  new WebDriverWait(getDriver(),10);
 	       wait.until(ExpectedConditions.visibilityOf(disconnectpage.DISContinue01));
           disconnectpage.DISContinue01.click();
           slf4jLogger.info("Clicked on Continue on Account Information");
    }
    
    /*
     * Shilpa: Clear email text box enter new email and select current billing address radio button
     * 
     */
    /* commented by sachin
    @Step
    public void selectcurrentbillingaddress()
    {
    	   slf4jLogger.info("Inside Account Information page");
    	   
    	   WebDriverWait wait =  new WebDriverWait(getDriver(),10);
    	   wait.until(ExpectedConditions.visibilityOf(disconnectpage.DISEmail));
    	     	   
    	   Boolean flag=disconnectpage.DISEmail.isDisplayed();
    	   slf4jLogger.info("Value: "+flag);
    	   
    	   if(flag)
    	   {
    		   String emailText=disconnectpage.DISEmail.getTextValue();
    		   slf4jLogger.info("Email Text: "+emailText);
    		   if(emailText.isEmpty())
    			   disconnectpage.DISEmail.sendKeys("test@testmail.com");    			   
    	   }
    	   else
    		   slf4jLogger.info("Email field is not displayed");
    	      	   
    	   WebDriverWait wait1 =  new WebDriverWait(getDriver(),10);
    	   wait1.until(ExpectedConditions.visibilityOf(disconnectpage.DISCurrentBilling));
    	   
           disconnectpage.DISCurrentBilling.waitUntilClickable();
           disconnectpage.DISCurrentBilling.click();
           slf4jLogger.info("Current Billing Address is selected successfully");
    }
    */
    
    
	// Created By Sachin
    public void selectcurrentbillingaddress()
    {
    	   slf4jLogger.info("Inside Account Information page");
  
           disconnectpage.DISCurrentBilling.waitUntilClickable();
           disconnectpage.DISCurrentBilling.click();
           slf4jLogger.info("Current Billing Address is selected successfully");
           
           waitABit(5000);
    }
    
    
    //Swati added
    
    public void clickoncontinueonschedulingpageofdisconnectorder()
    {      waitABit(5000);
    	   WebDriverWait wait =  new WebDriverWait(getDriver(),10);
 	       wait.until(ExpectedConditions.visibilityOf(disconnectpage.SchedulingContinue));
           disconnectpage.SchedulingContinue.click();
           slf4jLogger.info("Clicked on Continue button on scheduling page of disconnect order");
           waitABit(10000);
          // disconnectpage.Discontinueddisclosure.click();
           slf4jLogger.info("Clicked on Order disclosure for disconnection");
           
    }
    
    

}   

