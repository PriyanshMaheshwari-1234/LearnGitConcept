package testCases;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Properties;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.testng.annotations.Test;

import objectRepository.HomePageSpiceJet;

public class Spicejet {
  
	
	@Test
  public void f() throws Exception {
	  
		/*System.setProperty("webdriver.chrome.driver", "C:\\Users\\PriyanshMaheshwari\\Downloads\\chromedriver_win32 (5)\\chromedriver.exe");
		WebDriver driver = new ChromeDriver();
		driver.get("https://www.spicejet.com/");
		
		HomePageSpiceJet sj = new HomePageSpiceJet(driver);
		
		sj.clickFlight().click();
		*/
		Properties prop= new Properties();
		FileInputStream fis = new FileInputStream("C:\\Users\\PriyanshMaheshwari\\may2022\\PageObjectTutorial\\supportingData.properties");
		prop.load(fis);

		System.out.println(prop.getProperty("name"));
		System.out.println(prop.getProperty("Address"));
		int a=5;
		  int b=0;
		 
		
		
		
  }
}
