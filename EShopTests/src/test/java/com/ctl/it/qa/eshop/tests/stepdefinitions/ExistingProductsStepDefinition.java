package com.ctl.it.qa.eshop.tests.stepdefinitions;

import com.ctl.it.qa.eshop.steps.ExistingProductsSteps;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import net.thucydides.core.annotations.Steps;

public class ExistingProductsStepDefinition {

	@Steps
	ExistingProductsSteps existingproductssteps;

	@Then("^I should be in existing products page$")
	public void i_should_be_in_existing_products_page() {
		existingproductssteps.i_see_existind_products();
	}

	@And("^I click on DisconnectAll$")
	public void i_click_on_DisconnectAll() throws Throwable {
		existingproductssteps.ClickonDisconnectAll();
	}

	@Then("^I select move service from other order activities$")
	public void i_select_move_service() {
		existingproductssteps.i_select_move_service();
	}

	@Then("^I click make changes button$")
	public void i_click_make_changes_button() {
		existingproductssteps.i_click_make_changes_button();
	}

	// I enter new address and click validate
	@Then("^I enter new address and click validate \"([^\"]*)\"$")
	public void i_enter_newaddress_click_validate(String new_address) {
		existingproductssteps.i_enter_newaddress_click_validate(new_address);
	}

	// MAHESH
	@Then("^Validate speed$")
	public void validate_speed() {
		existingproductssteps.validate_speed();
	}

	// Anuradha: Select BnR from other activities
	@Then("^I select Billing and Response from other order activities$")
	public void i_select_Billing_and_Response_from_other_order_activities() {
		existingproductssteps.i_select_Billing_and_Response_from_other_order_activities();

	}

	// Swati added step to click on summary link of pending change order

	@Then("^I Click on summary on pending change order$")
	public void i_click_on_summary_on_pending_change_order() {
		existingproductssteps.i_click_on_summary_on_pending_change_order();

	}

	// Sachin : Select suspend or restore from other activities
	@Then("^I select suspend or restore from other activities$")
	public void suspend_or_restore() {
		existingproductssteps.i_select_suspend_or_restore();
	}
	
	//Prathibha
	@Then("^I click on Resume order$")
    public void i_click_on_Resume_order()  {
           existingproductssteps.clickonResumeorder();
    }
	
	//Prathibha
	@Then("^I select Place on hold from other actions$")
	public void i_select_placeOnHold() {
		existingproductssteps.i_select_placeOnHold();
	}
	
	//Prathibha
    @Then("^I choose On Hold Reason and submit$")
    public void i_choose_on_hold_reason() {
		existingproductssteps.i_choose_OnHoldReason();
	}
    
    //Priyansh 
    @Then("^I should click on change responsibility button$")
    public void change_responsibility() {
    	existingproductssteps.clickChangeResponsibility();
    }
    

  //Priyansh
  @Then("^I change the \"([^\"]*)\" and \"([^\"]*)\"$")
    public void change_first_name(String fName,String lName) {
    	existingproductssteps.i_change_first_name_last_name(fName,lName);
    }
	
}
