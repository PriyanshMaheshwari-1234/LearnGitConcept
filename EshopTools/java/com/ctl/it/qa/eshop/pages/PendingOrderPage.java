package com.ctl.it.qa.eshop.pages;

import com.ctl.it.qa.staf.Page;

import net.serenitybdd.core.annotations.findby.FindBy;
import net.serenitybdd.core.pages.WebElementFacade;

public class PendingOrderPage extends Page{

	@FindBy(xpath="//button[contains(text(),'Scheduling')]")
	public WebElementFacade scheduling;
	
	//Nitish Cancel order SUP1
	
	/*@FindBy(xpath="//select[@class='form-control drop-down-arrangement etf-fee-text ng-pristine ng-valid ng-touched']")
	public WebElementFacade cancel_reason;*/

	@FindBy(xpath="//select[@class='form-control drop-down-arrangement etf-fee-text ng-untouched ng-pristine ng-valid']")
	public WebElementFacade cancel_reason;
	
	@FindBy(xpath="(//button[@class='btn btn-primary'])[1]")
	public WebElementFacade continue_cancel_order;
	
	//Swati modified xpath
	//@FindBy(xpath="(//div[@class='btn btn-green'])[1]")
	@FindBy(xpath = "//div[@class='btn btn-secondary']")
	public WebElementFacade other_actions;
	
	@FindBy(xpath="//a[contains(text(),'Cancel Order')]")
	public WebElementFacade cancel_order;
	
	@FindBy(xpath="//button[contains(text(),'Cancel Order')]")
	public WebElementFacade cancel_order_button;
	
	/*  Swati changes to add xpath for the product button to click on pending order page  */
	
	@FindBy(xpath="//button[contains(text(),'Products')]")
	public WebElementFacade product;
				
	public WebElementFacade getUniqueElementInPage() {
		
		return scheduling;
	}

}
