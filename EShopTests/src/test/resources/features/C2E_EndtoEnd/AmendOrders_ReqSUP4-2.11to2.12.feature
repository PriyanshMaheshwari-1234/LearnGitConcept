@EshopTestScripts @MACDScripts @MACD_Change
Feature: MACD Scenarios on amend orders for Migrated HSI Postpaid accounts for SUP4


    #Priyansh script
   @AddPotsThenHOLD2.11
   Scenario Outline: For a pending scenerio add POTS then put on Hold 2.11
 
   Given I should be on Eshop login screen
   When I enter username and password
   And I enter the "<firstName>" "<lastName>" "<phoneNo>" in ESHOP customer information screen
   Then I click on Account or Order already exists
   When I enter only the completed account "<ExistAccount>"
   Then I click let's go button
   Then I click on Products button on Pending order page
   
   And I select HomePhone
   Then I select required option for voice mail "<Voice Mail>"
   Then I select required option for Wire Maintenance Plan "<Wire Maintenance Plan>"
   Then I select required option for Need new jacks or wiring? "<Need new jacks or wiring?>"
   Then Take a ScreenShot "<scen>"
   When I click on continue button
   Then I should be in customize service page
    And I select Assigned TN
    Then I click again on contine button
    And I click to reserve appointment
    Then I click on continue button of scheduling page
    And I click on continue button on Account Information page for MACD orders
    And I selected Yes for the review in order summary page
   
    Then I clicked submit order button
    Then I get account number from application
    Then I Click on start new order button
    And I enter the "<firstName>" "<lastName>" "<phoneNo>" in ESHOP customer information screen
    Then I click on Account or Order already exists
    When I enter only the completed account "<ExistAccount>"
    Then I click let's go button
   
    Then I click on other actions button on pending order page 
    Then I click on place on hold "<whyHold>" reason option
    Then Take a ScreenShot "<scen>"
    Then I validate Databases for statas"<filelocation1>" "<TCID>"
    
   
     Examples: 
    | Env | firstName | lastName | phoneNo    |ExistAccount   | Installation_option  |Date | Month | Year | SSN        | Device Quantity | Voice Mail | Wire Maintenance Plan | Port in a phone number? | Need new jacks or wiring? |   whyHold        |scen                |filelocation1                                            |TCID|
    | E2E | Thomas    | Hilla    | 4029986730 | 690081699     | Tech Install ($99)   | 02  |    02 | 1987 | 3450380580 | 1 device        | No         | No                    | No                      |  No work is needed ($0/mo)| Company Switching|AddPotsThenHOLD2.11 |../EshopTools/Database_Validation/Database_Scenario.xlsx |1.6 |
    
#PrathibhaScript
   @ATC_MACD_2.12
   Scenario Outline: MACD Scenario on H S I during  CH  add DTV place order on hold- unhold 2.12
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
      #Then do I create a new DTV account
   Then do I create a new DTV account "<Choice>" "<ExistAccount>"
   And I selected Yes for the review in order summary page
   Then I clicked submit order button
   Then I get account number from application
   Then I validate Databases for statas"<filelocation1>" "<TCID>"
   Then I continue to existing product page
   Then I click let's go button
   Then I click on Make changes button
   When I click on continue button
   Then I should be in customize service page
   And I place the order on Hold
   Then Take a ScreenShot "<scen>"
   
    Then I Click on start new order button
    And I enter the "<firstName>" "<lastName>" "<phoneNo>" in ESHOP customer information screen
    Then I click on Account or Order already exists
    When I enter only the completed account "<ExistAccount>"
    Then Take a ScreenShot "<scen>"
    Then I click let's go button
    Then I should be in existing products page
    Then I click on Resume order 
    Then Take a ScreenShot "<scen>"
    And I click on continue button
    Then I should be in customize service page
    And I click again on contine button
    And I click on continue button of scheduling page
    And I click on continue button on Account Information page for MACD orders
    When I selected Yes for the review in order summary page
    Then I clicked submit order button
    Then I should able to submit order successfully
    Then I get account number from application
    Then Take a ScreenShot "<scen>"
    #Then I validate Databases for statas"<filelocation1>" "<TCID>"
    #Then I get order number from application and provision it in Env "<Environment>" 
     Then Take a ScreenShot "<scen>"
     
     Examples: 
     | Environment | Env | firstName | lastName | phoneNo    | ExistAccount   | Choice  |scen            |filelocation1                                            |TCID|
     | Test2       | E2E | Thomas    | Hilla    | 4029986730 | 690118386      | No      |ATC_MACD_2.12.1 |../EshopTools/Database_Validation/Database_Scenario.xlsx |1.6 |   
    
  