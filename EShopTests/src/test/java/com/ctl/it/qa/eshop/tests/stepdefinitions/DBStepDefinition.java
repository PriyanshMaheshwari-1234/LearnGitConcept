package com.ctl.it.qa.eshop.tests.stepdefinitions;

import java.io.IOException;

import com.ctl.it.qa.eshop.steps.DBSteps;
import com.ctl.it.qa.eshop.steps.LoginSteps;
import com.ctl.it.qa.eshop.steps.screenshotSteps;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import net.thucydides.core.annotations.Steps;

public class DBStepDefinition {

	@Steps
	//LoginSteps loginSteps;
	DBSteps dst;

	
	
	@Then("^I validate Databases for Scenario\"([^\"]*)\"$")
	public void i_validate_Databases_for_Scenario(String filelocation) {
	     //Write code here that turns the phrase above into concrete actions
		//dst.validate_Scenariobased_DB_data(filelocation);
	}
	@Then("^I validate Databases for Scenario\"([^\"]*)\" \"([^\"]*)\"$")
	public void i_validate_Databases_for_Scenario(String filelocation, double testid) {
	    // Write code here that turns the phrase above into concrete actions
		//dst.validate_Scenariobased_DB_data(filelocation, testid);
	}
	
	
	@Then("^I validate Databases for statas\"([^\"]*)\" \"([^\"]*)\"$")
	public void i_validate_Databases_for_status(String filelocation1, double testid) throws IOException {
	     //Write code here that turns the phrase above into concrete actions
	//	dst.validate_Scenariobased_DB_data(filelocation1, testid);
	}
	@Then("^I validate Databases for statas and update file\"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\"$")
	public void i_validate_Databases_for_status_and_udpate_file(String filelocation1, double testid, String scen) throws IOException {
	     //Write code here that turns the phrase above into concrete actions
		dst.validate_Scenariobased_DB_data(filelocation1, testid, scen);
	}
}


