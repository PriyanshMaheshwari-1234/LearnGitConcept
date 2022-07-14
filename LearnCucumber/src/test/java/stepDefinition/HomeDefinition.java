package stepDefinition;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class HomeDefinition {

	
	//Given launch the homepage url
	//When enter valid credentials
	//Then you are allowed to enter
	
	@Given("^launch the homepage url$")
	public void Given_launch_the_homepage_url() {
		System.out.println("Homepage launched successfully");
	}
	
	@When("^enter valid credentials (.*) and (.*)$")
	public void When_enter_valid_credentials(String a, String b) {
		System.out.println("valid credentials entered successfully"+a+b);
	}
	
	@Then("^you are allowed to enter$")
	public void you_are_allowed_to_enter() {
		System.out.println("allowed successfully");
	}
	
}
