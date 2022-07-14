package com.ctl.it.qa.eshop.tests.stepdefinitions;

import com.ctl.it.qa.eshop.steps.LoginSteps;
import com.ctl.it.qa.eshop.steps.screenshotSteps;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import net.thucydides.core.annotations.Steps;

public class screenshotStepDefinition {

	@Steps
	//LoginSteps loginSteps;
	screenshotSteps scr;

	
	@Then("^Take a ScreenShot \"([^\\\"]*)\"$")
	public void Take_a_ScreenShot(String scen) {
		//System.out.println("************Printed");
		String scenario = scen;
		scr.take_Screenshot(scen);
		//loginSteps.take_Screenshot();
	}
}
