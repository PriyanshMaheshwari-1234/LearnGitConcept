package CucumberTutorial.LearnCucumber;

import java.util.List;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class PageSpiceJet {
	
	
	WebDriver driver;
	String place;
	public PageSpiceJet(WebDriver driver) {
		this.driver=driver;
		PageFactory.initElements(driver, this);
	}
	

	@FindBy(xpath="//div[text()='From']")
	WebElement from;
	
	
	@FindBy(xpath="//div[text()='To']")
	WebElement to;
	
	@FindBy(xpath="//div[@class='css-1dbjc4n r-knv0ih r-1k1q3bj r-ql8eny r-1dqxon3']/div")
	List<WebElement> city;
	
	
	
	@FindBy(xpath="//div[text()='Departure Date']")
	WebElement departureDate;
	
	
	
	
}
