package com.ctl.it.qa.eshop.steps;

import org.openqa.selenium.JavascriptExecutor;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.ctl.it.qa.eshop.pages.ChangePage;
import com.ctl.it.qa.eshop.pages.PendingOrderPage;
import com.ctl.it.qa.staf.Steps;

import net.thucydides.core.annotations.Step;

@SuppressWarnings("serial")
public class PendingOrderSteps extends Steps{

	private final Logger slf4jLogger = LoggerFactory.getLogger(PendingOrderSteps.class);
	PendingOrderPage pendingorderpage;
	ChangePage changepage;
	
	@Step
	public void i_click_on_scheduling_button() {
		
		pendingorderpage.shouldExist(pendingorderpage, 60);
		pendingorderpage.scheduling.click();
		slf4jLogger.info("Clicked Scheduling Button on Pending Order Page");
	}

	
	@Step
	public void i_click_on_otheractions_button() {
		waitABit(10000);
		pendingorderpage.shouldExist(pendingorderpage, 60);
		pendingorderpage.other_actions.click();
		slf4jLogger.info("Clicked other actions on Pending Order Page");
	}


	@Step
	public void i_click_on_cancel_button() {
		pendingorderpage.cancel_order.click();
		slf4jLogger.info("Clicked cancel order on Pending Order Page");	
	}


	@Step
	public void confirm_cancel() {
		waitABit(15000);
		pendingorderpage.cancel_reason.selectByIndex(10);
		slf4jLogger.info("Selected the reason for cancel order");	
		waitABit(5000);
		pendingorderpage.continue_cancel_order.click();
		waitABit(5000);
		//Swati commenting as it's not required
		//pendingorderpage.cancel_order_button.click();
		slf4jLogger.info("cancelation of order confirmed");	
		
	}
	
	/* 
	 * Swati added method to click on products
	 */
	
	@Step
	public void i_click_on_products_button() {
		
		pendingorderpage.shouldExist(pendingorderpage, 60);
		waitABit(10000);
		pendingorderpage.product.click();
		slf4jLogger.info("Clicked Product Button on Pending Order Page");
	}
	
	@Step
	public void i_removed_existing_product_HSI_pending_order_page() {
		
		WaitForPageToLoad(60);
		waitABit(10000);
		JavascriptExecutor jse1 = (JavascriptExecutor) getDriver();
		jse1.executeScript("arguments[0].click();",changepage.icon_internet);
	}

	
	
}