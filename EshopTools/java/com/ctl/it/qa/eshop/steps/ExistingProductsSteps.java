package com.ctl.it.qa.eshop.steps;

import org.junit.Assert;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.ctl.it.qa.eshop.pages.ExistingProductsPage;
import com.ctl.it.qa.eshop.pages.OrderPage;
import com.ctl.it.qa.eshop.pages.SchedulingPage;
import com.ctl.it.qa.staf.Steps;

import net.thucydides.core.annotations.Step;

public class ExistingProductsSteps extends Steps {

	private final Logger slf4jLogger = LoggerFactory.getLogger(ExistingProductsSteps.class);

	ExistingProductsPage existingproductspage;
	OrderPage orderPage;
	SchedulingPage schedulingPage;

	@Step
	public void i_see_existind_products() {
		existingproductspage.shouldExist(existingproductspage, 80);
		slf4jLogger.info("In Existing Product Page");
	}

	@Step
	public void ClickonDisconnectAll() {

		existingproductspage.otherAct.waitUntilClickable();
		existingproductspage.otherAct.click();
		existingproductspage.DISAll.click();
		slf4jLogger.info("clicked on Disconnect ALL");
	}

	@Step
	public void i_select_move_service() {
		existingproductspage.other_order_activies.click();
		waitABit(1500);
		existingproductspage.li_move_service.click();
		slf4jLogger.info("I selected Move service from other Activities DD");
	}

	@Step
	public void i_click_make_changes_button() {
		slf4jLogger.info("I clicked Make changes button");
		existingproductspage.li_move_service.click();
		waitABit(5000);
	}

	@Step
	public void i_enter_newaddress_click_validate(String new_address) {

		existingproductspage.txt_new_addresss.type(new_address);
		waitABit(1500);
		existingproductspage.btn_validate.click();
		waitABit(20000);
		//existingproductspage.shouldExist(existingproductspage, 100);
		slf4jLogger.info("I entered new address and clicked validate button");
		
		if(existingproductspage.btn_continue_with_order.isPresent()) {
			slf4jLogger.info("Given address "+new_address+ " is valid Addresss" );
			existingproductspage.btn_continue_with_order.click();
			waitABit(25000);
		}else {
			slf4jLogger.info("Given address "+new_address+ " is invalid Addresss");			
		}
		//existingproductspage.shouldExist(existingproductspage,100);
		orderPage.shouldExist(orderPage, 60);
		
		
	}

	// MAHESH BISHT
	@Step
	public void validate_speed() {
		waitABit(5000);
		String[] arrOfStrr = new String[10];
		String str = existingproductspage.moveservicesspeed.getText();
		slf4jLogger.info(str);
		slf4jLogger.info("DATA PERSENT");
		// str = str.replaceAll(" " , "");
		str = str.replaceAll("\\s", "");
		String[] splitwithd = str.split("d", 5);
		// System.out.println(arrOfStr[1]);
		if (splitwithd[0].toString().equals("Fasterspee")) {
			splitwithd[1] = splitwithd[1].replaceAll("s", "");
			arrOfStrr = splitwithd[1].split("/", 5);
		} else {
			arrOfStrr = splitwithd[1].split("/", 5);
		}
		String[] arrOfStrrfirst = arrOfStrr[0].split("b", 5);
		String[] arrOfStrrsecond = arrOfStrr[1].split("b", 5);
		// System.out.println("moveservice"+arrOfStrrfirst[0]+"-------"+arrOfStrrsecond[0]);

		existingproductspage.btn_continue_with_order.click();
		waitABit(25000);
		// String[] arrOfStr1 = arrOfStr[1].split("b",5);

		String str1 = existingproductspage.offerpagespeed.getText();
		String[] splitwithslash = str1.split("/", 5);
		String[] arrOfStrrrfirst = splitwithslash[0].split("b", 5);
		String[] arrOfStrrrsecond = splitwithslash[1].split("b", 5);
		// System.out.println("offer"+arrOfStrrrfirst[0]+"-------"+arrOfStrrrsecond[0]);

		Assert.assertEquals("pass", arrOfStrrfirst[0].toString(), arrOfStrrrfirst[0].toString());
		Assert.assertEquals("pass", arrOfStrrsecond[0].toString(), arrOfStrrrsecond[0].toString());
		Assert.assertNotEquals("pass", arrOfStrrfirst[0].toString(), arrOfStrrsecond[0].toString());
		// for (String a : arrOfStr){
		// System.out.println(a); }

		// JavascriptExecutor js = (JavascriptExecutor) getDriver();
		// js.executeScript("arguments[0].scrollIntoView();",
		// orderPage.continueButton);

	}
	
	/*
	 * Anuradha: code for Billing and Response
	 */
	@Step
	public void i_select_Billing_and_Response_from_other_order_activities(){
		existingproductspage.other_order_activies.click();
		waitABit(1500);
		slf4jLogger.info("I clicked Billing and Response");
		existingproductspage.BnR.click();
		waitABit(5000);
		existingproductspage.Cnt_BnR.click();
		waitABit(5000);
		}
	
	//Swati changes to click on summary in pending chnage order
	
	@Step
	public void i_click_on_summary_on_pending_change_order() {
		existingproductspage.summary_link.click();
		waitABit(5000);
		slf4jLogger.info("I clicked on summary link on pending change order");
	}
	
	// created by Sachin
		@Step
		public void i_select_suspend_or_restore() {
			existingproductspage.other_order_activies.click();
			waitABit(1500);
			existingproductspage.SuspendOrRestore.click();
			slf4jLogger.info("I selected suspend Or Restore service from other Activities");
		}
	//Prathibha
		@Step
		public void clickonResumeorder() {
			existingproductspage.resumeOrder.click();
			waitABit(15000);
			slf4jLogger.info("In Existing Product Page");
		}
		
		//Prathibha
		@Step
		public void i_select_placeOnHold() {
			waitABit(40000);
			existingproductspage.otherActions.click();
			waitABit(5000);
			existingproductspage.placeOnHold.click();
			waitABit(5000);
			slf4jLogger.info("I selected Place on Hold from other Activities DD");
		}
		
		//Prathibha
		@Step
		public void i_choose_OnHoldReason() {
			waitABit(5000);
			existingproductspage.selOnHoldReason.click();
			waitABit(500);
			existingproductspage.selReasonCustomerChanged.click();
			slf4jLogger.info("Selected On hold reason");
			waitABit(500);
			existingproductspage.btnPlaceOnHold.click();
			slf4jLogger.info("Clicked on Place on hold button");
			waitABit(15000);
			//existingproductspage.holdOrderSubmitted.isDisplayed();
			existingproductspage.holdOrderSubmitted.shouldBeCurrentlyVisible();
		}
		
		//Priyansh
		@Step
		public void clickChangeResponsibility() {
			existingproductspage.otherAction.waitUntilClickable();
			existingproductspage.otherAction.click();
			existingproductspage.changeRespons.click();
			waitABit(6000);
			schedulingPage.shouldExist(schedulingPage, 80);
			schedulingPage.continueInCalendar.click();
			slf4jLogger.info("Clicked on continue calendar button");
		}
		

   //Priyansh
	@Step
		public void i_change_first_name_last_name(String fN,String lN) {
			waitABit(10000);
			//existingproductspage.accInfo.isDisplayed();
			
			if(!(existingproductspage.writtenRadio.isSelected())) {
				existingproductspage.writtenRadio.click();
				
				
			}
			existingproductspage.newFN.clear();
			existingproductspage.newLN.clear();
			existingproductspage.newFN.sendKeys(fN);
			existingproductspage.newLN.sendKeys(lN);
			
		}
		
		
}
