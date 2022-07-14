package objectRepository;

//import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class HomePageSpiceJet {
	WebDriver driver;
	 public HomePageSpiceJet(WebDriver driver) {
		this.driver=driver;
		PageFactory.initElements(driver, this);
	}

	 /*By flight = By.xpath("//div[text()='check-in']");
		
		
		
	public WebElement clickFlight() {
		
	return	driver.findElement(flight);
	}*/
		
	 
	 @FindBy(xpath="//div[text()='check-in']")
	 WebElement flight;
	 
	 public WebElement clickFlight()
	 {
		 return flight;
	 }
		
	

}
