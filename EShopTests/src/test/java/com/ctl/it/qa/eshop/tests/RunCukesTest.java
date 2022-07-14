package com.ctl.it.qa.eshop.tests;

import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.runner.RunWith;

import com.ctl.it.qa.staf.Environment;
import com.ctl.it.qa.staf.RallyTools;
import com.ctl.it.qa.staf.STAFEnvironment;
import com.ctl.it.qa.staf.SplunkLogger;
import com.ctl.it.qa.staf.Steps;
import com.ctl.it.qa.staf.TestEnvironment;

import cucumber.api.CucumberOptions;
import net.serenitybdd.cucumber.CucumberWithSerenity;

//E2E//ITV1
@TestEnvironment(Environment.TEST1)
@RunWith(CucumberWithSerenity.class)
@CucumberOptions(features = "src/test/resources/features", plugin = { "pretty",
		"json:target/Reports/EShopCucumberReport.json", "html:target/Reports/EShopHTMLReport" },

		dryRun = false, tags = { "@HSINoPaySelfInstall14.15 " })
       //dryRun = false, tags = { "@HSIDISCONNECTALL5.1,@DisconnectHSIPots5.2,@CToE_REQ_5.3,@CToE_REQ_5.4,@RemoveHSI5.5,@ATC_MACD_5.6,@ATC_MACD_5.7,@RemoveHSIfromHSIPOTS5.8,@RemoveEssentialhome5.9,@CToE_REQ_5.10,@ModemPurchase6.1,@CToE_REQ_6.1,@CToE_REQ_6.2,@CToE_REQ_6.3,@ChangeResponsibility7.0,@vacSuspendHSI8.1,@vacSuspendHsiPots8.2,@HsiDtvVacSuspend8.3,@ATC_MACD_suspend_8.4.1,@CToE_REQ_9.1.1,@CToE_REQ_9.1.2,@ATC_MACD_9.2,@ATC_MACD_11.1,@ATC_MACD_11.2,@ATC_MACD_11.3,@ATC_MACD_12.1,@SpeedChangewithJACK12.2,@CToE_REQ_12.3,@HSINONGPON13.1"})
       //dryRun = false, tags = { "@GPON_HSI13.2,@HSI13.3,@New_HSI_Voice_13.4,@New_HSI_Voice_13.5,@1PtyserviceNoPay13.6,@ATC_MACD_13.7,@ATC_MACD_13.8,@exactMatchNew13.9,@exactMatchNew13.10,@POTSOnlyNoPay13.11,@CToE_REQ_13.12,@CToE_REQ_13.13,@ATC_MACD_13.14,@New_Voice_14.1,@New_HSI_Voice_14.2,@CancelOrder14.3,@CToE_REQ_14.5,@BillingandRecords14.6,@CToE_REQ_14.7,@CToE_REQ_14.8,@ExistHssiAndPPotsRemovePots14.9,@HSIpendingP4LtoPty14.11,@HSIpendingselftotech14.12,@voicemailtonon-voicemail14.13,@ModemLeased14.14,@HSINoPaySelfInstall14.15,@HsiChangeSpeed15.2,@ExistHsiDTVtechIntall15.14" })
 
// A few other tags: @EshopTestScripts @EShopSanity @EShopFunctional @eshopcentral
	
public class RunCukesTest {

	@BeforeClass
	public static void setEnvironment() {
		STAFEnvironment.registerEnvironment(RunCukesTest.class);
		Steps.initialize("EShopLogin.xml");
		SplunkLogger.cukeTestSplunkBeforeClass();
		RallyTools.initiateRallyLogin();
	}

	@AfterClass
	public static void test() throws Exception {
		SplunkLogger.cukeTestSplunkAfterClass(RunCukesTest.class);
		RallyTools.closeRallyAPI();
}

}
