package com.ctl.it.qa.eshop.tests.stepdefinitions;

import com.ctl.it.qa.eshop.steps.ProvisionSteps;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import net.thucydides.core.annotations.Steps;

public class ProvisionStepDefinition {

	@Steps
	ProvisionSteps provisionSteps;

	@Given("^I should be on Tara tool screen$")
	public void i_should_be_on_tara_tool_screen() {
		provisionSteps.Tara_url_OpenPage();
	}
	 @Then("^I enter order number1 \"([^\"]*)\"$")
	 public void i_enter_order_number(String Ordernumber) {
		 provisionSteps.enterOrderNumber(Ordernumber);
		}
	 @And("^I enter environment1 \"([^\"]*)\"$")
	    public void i_enter_environment(String Environment) {
		 provisionSteps.enterEnvironment(Environment);
		}
	 @And("^I click on Try it out button1$")
	   public void i_click_on_try_it_out() {
		 provisionSteps.clickOntryitOut();
		}
	 @Then("^I get order number from application and provision it in Env \"([^\"]*)\"$")
	 public void i_provision_the_order(String Environment) {
		 provisionSteps.provisionOrder(Environment);
		}
	 @And("^I validate the results$")
	 public void i_validate_the_results() {
		 provisionSteps.validateResults();
		}
}
