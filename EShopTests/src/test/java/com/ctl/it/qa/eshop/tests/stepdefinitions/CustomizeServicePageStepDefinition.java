package com.ctl.it.qa.eshop.tests.stepdefinitions;

import com.ctl.it.qa.eshop.steps.CustomizeServiceSteps;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import net.thucydides.core.annotations.Steps;

public class CustomizeServicePageStepDefinition {

	@Steps
	CustomizeServiceSteps customizeServiceSteps;

	@Then("^I should be in customize service page$")
	public void i_should_be_in_customize_service_page() throws Throwable {

		customizeServiceSteps.isCustomizePage();

	}

	@Given("^I click again on contine button$")
	public void i_click_again_on_contine_button1() throws Throwable {

		customizeServiceSteps.clickOnAgainContiune();
	}

	@Then("^I add the equipments in customize service page$")
	public void i_add_the_equipments_in_customize_service_page() throws Exception {
		customizeServiceSteps.i_added_euipment();

	}

//Nitish Pots

	@Then("^I should add the equipments in customize service page$")
	public void i_should_add_the_equipments_in_customize_service_page() throws Throwable {
		customizeServiceSteps.i_add_euipments();
	}

	// ************ ac31339 code starts from here

	@Then("^I select all the equipments \"([^\"]*)\"$")
	public void i_select_all_the_equipments(String toggleTxt) throws Throwable {

		customizeServiceSteps.selectAllEquipments(toggleTxt);

	}

	// I select specific equipments
	@Then("^I select specific equipments \"([^\"]*)\" and \"([^\"]*)\"$")
	public void i_select_specific_equipments(String toggleTxt, String equipments) throws Throwable {

		customizeServiceSteps.selectSpecificEquipments(toggleTxt, equipments);

	}

	@Then("^I click List Toggle$")
	public void i_click_list_toggle() throws Exception {
		customizeServiceSteps.i_click_listToggle();
	}

	@Then("^I select Listing options \"([^\"]*)\"$")
	public void i_select_listing_options(String listOption) throws Exception {
		customizeServiceSteps.i_select_listing_options(listOption);
	}

	// ************ ac31339 code Ends

	// ab18364
//	@Then("^I click on Telephone Number and then click on More TNs$")
//	public void i_click_on_Telephone_Number_and_then_click_on_More_TNs(){
//		customizeServiceSteps.click_Telephone_Number();
//	}

	// Swati changes for selecting options from technician charges to add jacks
	@Then("^I select options from technician charges \"([^\"]*)\"$")
	public void i_select_options_from_technician_charges(String techOption) {
		customizeServiceSteps.i_select_options_from_technician_charges(techOption);
	}

	// Priyansh modifiaction

	@Then("^I click all equip$")
	public void i_click_all_equip() {
		customizeServiceSteps.clickAllEquip();
	}
	
	//Prathibha 
	
	@And("^I place the order on Hold$")
	public void i_place_the_order_on_Hold() throws Exception {
		customizeServiceSteps.i_place_orderOnHold();
	}
	
	//Prathibha
	@And("^I select Closers and Promos tab$")
	public void i_select_Closers_and_Promos_tab() throws Exception {
		customizeServiceSteps.i_select_ClosersAndPromos_tab();
	}
	
	//Prathibha
	@And("^I select the checkbox Discount with Paperless$")
	public void i_select_the_checkbox_discount_with_Paperless() throws Exception {
		customizeServiceSteps.i_select_cbDiscountAndPaperless();
	}
	//Prathibha
	@And("^I click again on continue button2$")
	public void i_click_again_on_contine_button2() throws Throwable {
		customizeServiceSteps.clickOnAgainContinue2();
	}

	//Prathibha
	@And("^I select Assigned TN$")
	public void i_select_assigned_TN() throws Exception {
		customizeServiceSteps.i_select_assignedTN();
	}
}
