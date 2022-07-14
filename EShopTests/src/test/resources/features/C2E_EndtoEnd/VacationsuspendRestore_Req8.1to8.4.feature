@EshopTestScripts @MACDScripts @MACD_Change
Feature: MACD Scenarios on vacation suspend/restore for HSI postpaid customer

#Priyansh script
    @vacSuspendHSI8.1
     Scenario Outline: Click on vacSuspend HSI 8.1
	
	  Given I should be on Eshop login screen
    When I enter username and password
    And I enter the "<firstName>" "<lastName>" "<phoneNo>" in ESHOP customer information screen
    Then I click on Account or Order already exists
    When I enter only the completed account "<ExistAccount>"
    Then I click let's go button
    
    Then I should be in existing products page
	  Then I click on Vacation Service
  	And I select Vacation Suspend from the dialog box
    Then Take a ScreenShot "<scen>"
    And I click on Continue button on vacation service dialog box
    And I click on Continue button on vacation service dialog box again
    And I click on OK Got it button on Order Disclosures dialog box for Vacation Suspend for HSI
    
    Then I should be in customize service page
    Then I click again on contine button
    Then I select the provided due date for installation in Due Date format "<Due Date>"
    Then Take a ScreenShot "<scen>"
    When I click on continue button on vacation order scheduling page
    And I validate if Update or Review Billing address is present for Vacation Suspend order in Account Information page
    And I select current billing address
    And I click on continue button for Vacation Suspend order in Account Information page
    And I selected Yes for the review in order summary page
    Then I clicked submit order button
    Then I get account number from application
    Then Take a ScreenShot "<scen>"
    Then I validate Databases for statas and update file"<filelocation1>" "<TCID>" "<scen>"
    #Then I get order number from application and provision it in Env "<Environment>" 
     Then Take a ScreenShot "<scen>"
		
	Examples: 
    | Environment   | Env  | firstName | lastName | phoneNo    | account number | Due Date | ExistAccount |scen             |filelocation1                                            |TCID|
    | Test2         | ITV1 | Jones     | Smith    | 4029986730 |      683157560 | Aug23    |690083726     |vacSuspendHSI8.1 |../EshopTools/Database_Validation/Database_Scenario.xlsx |1.6 |
      
       #Priyansh script
     @vacSuspendHsiPots8.2
     Scenario Outline: To a migrated HSI order add POTS and after provisioning , Click on vacSuspend for HSI and POTS order 8.2
	
	  Given I should be on Eshop login screen
    When I enter username and password
    And I enter the "<firstName>" "<lastName>" "<phoneNo>" in ESHOP customer information screen
    Then I click on Account or Order already exists
    When I enter only the completed account "<ExistAccount>"
    Then I click let's go button
    Then I should be in existing products page
    Then I click on Make changes button
    Then I should be in Product offer page
    Then I select HomePhone
    Then I select required option for voice mail "<Voice Mail>"
    Then I select required option for Wire Maintenance Plan "<Wire Maintenance Plan>"
    Then I select required option for Port in a phone number? "<Port in a phone number?>"
    Then I select required option for Need new jacks or wiring? "<Need new jacks or wiring?>"
    Then Take a ScreenShot "<scen>"
    When I click on continue button
    Then I should be in customize service page
    Then I click again on contine button
    Then I click on continue button of scheduling page
    And I click on continue button on Account Information page for MACD orders
    And I selected Yes for the review in order summary page
    Then I enter the special remark in Additional Order Remarks field "<Additional Order Remarks>"
    Then I clicked submit order button
    Then I should able to submit order successfully
    Then I get account number from application
    Then Take a ScreenShot "<scen>"
    Then I validate Databases for statas and update file"<filelocation1>" "<TCID>" "<scen>"
    Then I get order number from application and provision it in Env "<Environment>" 
     Then Take a ScreenShot "<scen>"

    Given I should be on Eshop login screen
    When I enter username and password
  
    And I enter the "<firstName>" "<lastName>" "<phoneNo>" in ESHOP customer information screen
    Then I click on Account or Order already exists
    When I enter only the completed account "<ExistAccount>"
    Then I click let's go button
    Then I should be in existing products page
    Then I click on Vacation Service
    And I select Vacation Suspend from the dialog box
    And I select Vacation Suspend from the dialog box for POTS
    And I click on Continue button on vacation service dialog box
    And I click on Continue button on vacation service dialog box again
    Then Take a ScreenShot "<scen>"
    Then I click continue on Product and service page
    And I click on OK Got it button on Order Disclosures dialog box for Vacation Suspend for HSI
    
    Then I should be in customize service page
     Then I click again on contine button
    Then I select the provided due date for installation in Due Date format "<Due Date>"
    When I click on continue button on vacation order scheduling page
    And I validate if Update or Review Billing address is present for Vacation Suspend order in Account Information page
    And I select current billing address
    And I click on continue button for Vacation Suspend order in Account Information page
    And I selected Yes for the review in order summary page
    Then I clicked submit order button
    Then I get account number from application
    Then Take a ScreenShot "<scen>"
    Then I validate Databases for statas and update file"<filelocation1>" "<TCID>" "<scen>"
    #Then I get order number from application and provision it in Env "<Environment>" 
     Then Take a ScreenShot "<scen>"
	
Examples: 
    | Environment   | Env  | firstName | lastName | phoneNo    |  Due Date | ExistAccount |Voice Mail   |  Wire Maintenance Plan  | Port in a phone number? | Need new jacks or wiring? |scen                 |filelocation1                                            |TCID|
    | Test2         | ITV1 | Jones     | Smith    | 4029986730 |  Aug23    |690102231     |     No      |    No                   | No                      | No Work Is Needed ($0/mo) |vacSuspendHsiPots8.2 |../EshopTools/Database_Validation/Database_Scenario.xlsx |1.6 |
      
      
      
#priyansh script

 @HsiDtvVacSuspend8.3
      Scenario Outline: For a migrated order add DTV and after provisioning perform vacation suspend 8.3
	
	   Given I should be on Eshop login screen
   When I enter username and password
   And I enter the "<firstName>" "<lastName>" "<phoneNo>" in ESHOP customer information screen
   Then I click on Account or Order already exists
   When I enter only the completed account "<ExistAccount>"
   Then I click let's go button
   Then I should be in existing products page
   Then I click on Make changes button
   Then I should be in Product offer page
   Then I select DTV
   Then Take a ScreenShot "<scen>"
   When I click on continue button
   Then I should be in customize service page
   Then I click again on contine button
   Then I click on continue button of scheduling page
    Then I click on launch OPUS
   Then do I create a new DTV account "<Choice>" "<ExistAccount>"
   And I selected Yes for the review in order summary page
   Then I clicked submit order button
   Then I get account number from application
   Then Take a ScreenShot "<scen>"
   Then I validate Databases for statas and update file"<filelocation1>" "<TCID>" "<scen>"
   Then I get order number from application and provision it in Env "<Environment>" 
   Then Take a ScreenShot "<scen>"

    Given I should be on Eshop login screen
    When I enter username and password
   And I enter the "<firstName>" "<lastName>" "<phoneNo>" in ESHOP customer information screen
    Then I click on Account or Order already exists
    When I enter only the completed account "<ExistAccount>"
    Then I click let's go button
    Then I should be in existing products page
     Then I click on Vacation Service
	  Then Take a ScreenShot "<scen>"
	  And I select Vacation Suspend from the dialog box
    And I click on Continue button on vacation service dialog box
    And I click on Continue button on vacation service dialog box again
    And I click on OK Got it button on Order Disclosures dialog box for Vacation Suspend for HSI
   Then I should be in customize service page
     Then I click again on contine button
     Then I select the provided due date for installation in Due Date format "<Due Date>"
    When I click on continue button on vacation order scheduling page
    Then Take a ScreenShot "<scen>"
    And I validate if Update or Review Billing address is present for Vacation Suspend order in Account Information page
    And I select current billing address
    And I click on continue button for Vacation Suspend order in Account Information page
    And I selected Yes for the review in order summary page
    Then I clicked submit order button
    Then I get account number from application
    Then Take a ScreenShot "<scen>"
   Then I validate Databases for statas and update file"<filelocation1>" "<TCID>" "<scen>"
    #Then I get order number from application and provision it in Env "<Environment>" 
     Then Take a ScreenShot "<scen>"
	
	
	Examples: 
    | Environment   | Env  | firstName | lastName | phoneNo    |  Due Date | ExistAccount |Choice|scen                |filelocation1                                            |TCID|
    | Test2         | ITV1 | Jones     | Smith    | 4029986730 |  Aug30    |690100262     |  No  |HsiDtvVacSuspend8.3 |../EshopTools/Database_Validation/Database_Scenario.xlsx |1.6 |
      
      
      #Prathibha script
       @ATC_MACD_suspend_8.4

  Scenario Outline: Vacation Suspend for HSI only 8.4
    #Given I should be on SFC login screen
    #When I enter username and password
    #Then I search order in SFC page with account number "<account number>"
    #Then I click on order eshop button in SFC page to proceed to Eshop Page
    #Then I should be in existing products page
    Given I should be on Eshop login screen
    When I enter username and password
    And I enter the "<firstName>" "<lastName>" "<phoneNo>" in ESHOP customer information screen
    Then I click on Account or Order already exists
    When I enter only the completed account "<account number>"
    Then I click let's go button
    Then I should be in existing products page
    Then I click on Vacation Service
    And I select Vacation Suspend from the dialog box
    And I click on Continue button on vacation service dialog box
    And I click on Continue button on vacation service dialog box again
    And I click on OK Got it button on Order Disclosures dialog box for Vacation Suspend for HSI
    Then Take a ScreenShot "<scen>"
    Then I should be in customize service page
    And I click again on contine button
    When I click on continue button on vacation order scheduling page
    And I select No, mail my bill option
    Then Take a ScreenShot "<scen>"
    And I validate if Update or Review Billing address is present for Vacation Suspend order in Account Information page
    And I select current billing address
    And I click on continue button for Vacation Suspend order in Account Information page
    And I selected Yes for the review in order summary page
    Then I clicked submit order button
    Then I get account number from application
    Then Take a ScreenShot "<scen>"
    Then I validate Databases for statas and update file"<filelocation1>" "<TCID>" "<scen>"
    #Then I get order number from application and provision it in Env "<Environment>" 
     Then Take a ScreenShot "<scen>"
    
     Examples: 
    | Environment   | Env  | firstName | lastName | phoneNo    | account number | Due Date |scen                   |filelocation1                                            |TCID|
    | Test2         | ITV1 | Jones     | Smith    | 4029986730 |      690102059 | Aug23    |ATC_MACD_suspend_8.4.1 |../EshopTools/Database_Validation/Database_Scenario.xlsx |1.6 |
      
      
    
 


  