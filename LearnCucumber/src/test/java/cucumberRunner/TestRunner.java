package cucumberRunner;

import org.junit.runner.RunWith;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;

@RunWith(Cucumber.class)
@CucumberOptions(features= {"featureFiles"} , glue= {"stepDefinition"} , monochrome=true , publish=true,
plugin= {"pretty"}
		)

public class TestRunner {
	//cucumber.publish.quiet=true ;
}
