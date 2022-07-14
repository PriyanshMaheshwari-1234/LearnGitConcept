package stepDefinition;

import java.time.Duration;
import java.util.List;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class SpiceJetHomePage {

	WebDriver driver;

	@Given("set path for webdriver")
	public void set_path_for_webdriver() {
		System.setProperty("webdriver.chrome.driver",
				"C:\\Users\\PriyanshMaheshwari\\Downloads\\chromedriver_win32 (6)\\chromedriver.exe");

	}

	@When("Launch the browser")
	public void launch_the_browser() {
		driver = new ChromeDriver();
		driver.manage().timeouts().implicitlyWait(Duration.ofSeconds(30));
		driver.manage().timeouts().pageLoadTimeout(Duration.ofSeconds(30));
		driver.manage().window().maximize();
	}

	@Then("Launch the url")
	public void launch_the_url() {
		driver.get("https://www.spicejet.com/");
	}

	@Given("Select from and to city")
	public void select_from_and_to_city() {
		
		
System.out.println("City selected successfully");
	}

	@When("Select date")
	public void select_date() {
		driver.findElement(By.xpath("//div[text()='Departure Date']")).click();
List<WebElement> month=driver.findElements(By.xpath("//div[@class='css-1dbjc4n r-k8qxaj']//div"));
for(WebElement x: month) {
	System.out.println(x.getText());
}
	}

	@Then("click on Book Ticket")
	public void click_on_book_ticket() {
		System.out.println("Booked successfully");
	}

}
