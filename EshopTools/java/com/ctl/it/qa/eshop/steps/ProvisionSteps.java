package com.ctl.it.qa.eshop.steps;

import static org.junit.Assert.assertTrue;

import java.sql.Driver;
import java.util.ArrayList;

import org.junit.Assert;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.ctl.it.qa.eshop.pages.LoginPage;
import com.ctl.it.qa.eshop.pages.OrderSummaryPage;
import com.ctl.it.qa.eshop.pages.ProvisionPage;
import com.ctl.it.qa.staf.Steps;

import net.serenitybdd.core.annotations.findby.By;
import net.thucydides.core.annotations.Step;

public class ProvisionSteps extends Steps {

	private final Logger slf4jLogger = LoggerFactory.getLogger(ProvisionSteps.class);
	LoginPage loginPage;
	ProvisionPage provisionPage;
	OrderSummaryPage orderSummaryPage;
	public static String ordernum;
	
	@Step
	public void Tara_url_OpenPage() {
		try {
			loginPage.openAt(envData.getFieldValue("url"));
			loginPage.maximize();
			slf4jLogger.info("Open Tara application URL: " + envData.getFieldValue("url") + " successfully");
		} catch (Exception e) {
			slf4jLogger.error("Error opening Tara application URL: " + envData.getFieldValue("url") + ": Error: "
					+ e.getMessage());
		}
	}
	
	public void enterOrderNumber(String ordernumber) {
		provisionPage.OrderNumber.sendKeys(ordernumber);
		slf4jLogger.info("Entered Order Number");
	}
	
	public void enterEnvironment(String environment) {
		provisionPage.Environment.sendKeys(environment);
		slf4jLogger.info("Entered Environment");
	}
	
	public void clickOntryitOut() {
		provisionPage.TryitOut.click();
		slf4jLogger.info("Clicked on Try it out button");
	}
	public void validateResults() {
		waitABit(100000);
		try {
			waitABit(5000);
			boolean ffwf = provisionPage.FFWFCompletion.isDisplayed();
			if(ffwf) {	
				slf4jLogger.info("FFWF has completed");}
		else {
			slf4jLogger.info("FFWF has failed");}
		} catch (Exception e) {
			slf4jLogger.info("FFWF has failed");
			Assert.assertTrue(provisionPage.FFWFCompletion.isDisplayed());}
		try {
			boolean tom = provisionPage.TOMCompletion.isDisplayed();
			if(tom) {	
				slf4jLogger.info("TOM has completed");}
		else {
			slf4jLogger.info("TOM has failed");}
		} catch (Exception e) {
			slf4jLogger.info("TOM has failed");
			Assert.assertTrue(provisionPage.TOMCompletion.isDisplayed());}
		try {
			boolean bill = provisionPage.BillingCompletion.isDisplayed();
			if(bill) {	
				slf4jLogger.info("Billing is successful");}
		else {
			slf4jLogger.info("Billing is failed");	}
		} catch (Exception e) {
			slf4jLogger.info("Billing is failed");
			slf4jLogger.info("Provision is failed");
			Assert.assertTrue(provisionPage.BillingCompletion.isDisplayed());}
		}
	
	public void provisionOrder(String environment) {
		String fullOrdernum = orderSummaryPage.orderNumberText.getText();
		int lastindexor = fullOrdernum.toCharArray().length;
		ordernum = fullOrdernum.substring(13, lastindexor);	
		slf4jLogger.info("Copied order number");
		provisionPage.openUrl("https://bmp-tara-tool-service-devsi4.kubemdc-test.corp.intranet/#!/tara-tool-controller/completeOrderWithLogUsingPOST");
		provisionPage.getAlert().accept();
		waitABit(5000);
		provisionPage.OrderNumber.sendKeys(ordernum);
		slf4jLogger.info("Entered Order number");
		provisionPage.Environment.sendKeys(environment);
		slf4jLogger.info("Entered Environment");
		provisionPage.TryitOut.click();
		slf4jLogger.info("Clicked on Try it out button");
		waitABit(100000);
		try {
			waitABit(5000);
			boolean ffwf = provisionPage.FFWFCompletion.isDisplayed();
			if(ffwf) {	
				slf4jLogger.info("FFWF has completed");}
		else {
			slf4jLogger.info("FFWF has failed");}
		} catch (Exception e) {
			slf4jLogger.info("FFWF has failed");
			Assert.assertTrue(provisionPage.FFWFCompletion.isDisplayed());}
		try {
			boolean tom = provisionPage.TOMCompletion.isDisplayed();
			if(tom) {	
				slf4jLogger.info("TOM has completed");}
		else {
			slf4jLogger.info("TOM has failed");}
		} catch (Exception e) {
			slf4jLogger.info("TOM has failed");
			Assert.assertTrue(provisionPage.TOMCompletion.isDisplayed());}
		try {
			boolean bill = provisionPage.BillingCompletion.isDisplayed();
			if(bill) {	
				slf4jLogger.info("Billing is successful");}
		else {
			slf4jLogger.info("Billing is failed");	}
		} catch (Exception e) {
			slf4jLogger.info("Billing is failed");
			slf4jLogger.info("Provision is failed");
			Assert.assertTrue(provisionPage.BillingCompletion.isDisplayed());}
	}

}
