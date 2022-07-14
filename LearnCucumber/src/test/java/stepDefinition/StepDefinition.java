package stepDefinition;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class StepDefinition {

	@Given("^user is on landing page$")
	public void user_is_on_landing_page() {
		System.out.println("landing page ");

	}

	/*
	@When("username is {string} and password {string} entered")
	//@When("^username is \"([^\"]*)\" and password \"([^\"]*)\" entered$")
	public void username_password_entered(String name1 , String name2 ) {
		System.out.println("username "+name1+" paswword "+name2);
	}*/

	@Then("^Home page is populated$")
	public void home_page_is_populated() {
		// Write code here that turns the phrase above into concrete actions
		System.out.println("cards displayed");

	}

	@Then("^cards are displayed$")
	public void cards_are_displayed() {
		System.out.println("cards displayed");
	}
	
	
	@Then("cards are displayed are {string}")
	public void cards_are_displayed_are(String jam) {
	    System.out.println("card is "+jam);
	    //throw new io.cucumber.java.PendingException();
	}


}
