package com.ctl.it.qa.eshop.pages;

import com.ctl.it.qa.staf.Page;

import net.serenitybdd.core.annotations.findby.FindBy;
import net.serenitybdd.core.pages.WebElementFacade;

public class DisconnectPage extends Page{
    
    @FindBy(xpath = "//select[contains(@class,'form-control')]")
    public WebElementFacade DISReason;
    
    //Swati change as no such reason with Business Closed
    //@FindBy(xpath = "//option[contains(text(),'Business Closed')]")
    @FindBy(xpath = "//option[contains(text(),'Feature Not Available')]")
    public WebElementFacade DISHSIReasonBS;
    
    @FindBy(xpath = "(//option[contains(text(),'Feature Not Available')])[2]")
    public WebElementFacade DISPhReasonBS;
    
    @FindBy(xpath="(//button[@class='btn btn-primary'])[1]")
    public WebElementFacade DISContinue;
    
    //Swati changing xpath 
    //@FindBy(xpath = "//button[@id='contBtnDiv']")
    @FindBy(xpath = "//button[@class='btn btn-primary']")
    public WebElementFacade DISContinue01;
    
    @FindBy(xpath = "//button[@class='btn btn-continue']")
    public WebElementFacade DISContinue02;
    
    @FindBy(id ="currentBillingAddress")
    public WebElementFacade DISCurrentBilling;
    
    @FindBy(id = "finalEmail")
    public WebElementFacade DISEmail;
    
    //Swati added
    
    @FindBy(xpath = "//button[@class='btn btn-primary']")
    public WebElementFacade SchedulingContinue;
    
    @FindBy(xpath = "//button[contains(text() ,'OK, Got it' )]")
    public WebElementFacade Discontinueddisclosure;
    
           
    @Override
    public WebElementFacade getUniqueElementInPage() {
           return null;
    }

}

