package com.ctl.it.qa.eshop.pages;

import com.ctl.it.qa.staf.Page;

import net.serenitybdd.core.annotations.findby.FindBy;
import net.serenitybdd.core.pages.WebElementFacade;

public class ProvisionPage extends Page{
    
   
    
    @FindBy(xpath = "(//input[@name='orderNumber'])[2]")
    public WebElementFacade OrderNumber;
    
    @FindBy(xpath="(//input[@name='environment'])[2]")
    public WebElementFacade Environment;
    
    @FindBy(xpath="(//input[@class='submit'])[2]")
    public WebElementFacade TryitOut;
           
    @FindBy(xpath="//*[contains(text(), \"FFWF has completed\")]")
    public WebElementFacade FFWFCompletion;
    
    @FindBy(xpath="//*[contains(text(), \"TOM completion successfully sent\")]")
    public WebElementFacade TOMCompletion;
    
    @FindBy(xpath="//*[contains(text(), \"Billing successful\")]")
    public WebElementFacade BillingCompletion;
    
    
    @Override
    public WebElementFacade getUniqueElementInPage() {
           return null;
    }

}

