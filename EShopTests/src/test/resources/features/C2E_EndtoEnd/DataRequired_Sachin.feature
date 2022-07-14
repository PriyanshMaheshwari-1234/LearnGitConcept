@CToE

 Feature: file for  change to add DTv then disconnect all
 
    #not able to validate disconnect because of eshop issue
    @CToE_REQ_5.3
    Scenario Outline: MACD Scenario on change to add DTv then disconnect all
    Given I should be on Eshop login screen
    When I enter username and password
    And I enter the "<firstName>" "<lastName>" "<phoneNo>" in ESHOP customer information screen
    Then I click on Account or Order already exists
    And I enter only the completed account "<completed_accountnum>"
    Then I click let's go button
    Then I should be in existing products page
    Then I click on Make changes button
    Then I should be in Product offer page
	  Then I select DTV
	  Then Take a ScreenShot "<scen>"
    And I click on continue button
    Then I should be in customize service page
    And I click again on contine button
    And I click on continue button of scheduling page
	  Then I click on launch OPUS
    #Then do I create a new DTV account
    Then do I create a new DTV account "<Choice>" "<completed_accountnum>"
    And I selected Yes for the review in order summary page
    Then I clicked submit order button
    Then I get account number from application
    Then Take a ScreenShot "<scen>"
    Then I Click on start new order button
    And I enter the "<firstName>" "<lastName>" "<phoneNo>" in ESHOP customer information screen
    Then I click on Account or Order already exists
    And I enter only the completed account "<completed_accountnum>"
    Then I click let's go button
    Then I should be in existing products page
    And I click on DisconnectAll
    Then I enter Internet Disconnect Reason
    And I click again on continue button on DIS Page
    Then Take a ScreenShot "<scen>"
    And I click on continue button on Scheduling page of Disconnect Order
    And I select No PaperLess billing option 
    And I select current Billing Address option
    And I click on continue button on Account Information
    And I selected Yes for the review in order summary page
    Then I clicked submit order button
    Then I get account number from application
    #Then I validate Databases for statas"<filelocation1>" "<TCID>"
     
      Examples: 
      | Env | firstName | lastName | phoneNo    | completed_accountnum | Choice |scen           |filelocation1                                            |TCID|
      | E2E | THOMAS    | HILLA    | 4043564343 | 683305264            | No     |CToE_REQ_5.3   |../EshopTools/Database_Validation/Database_Scenario.xlsx |1.6 |
 
 
    #not able to validate disconnect because of eshop issue
    @CToE_REQ_14.4
    Scenario Outline: MACD Scenario on change to add Home Phone then disconnect all
	  
	  Given I should be on Eshop login screen
    When I enter username and password
    And I enter the "<firstName>" "<lastName>" "<phoneNo>" in ESHOP customer information screen
    Then I click on Account or Order already exists
    And I enter only the completed account "<completed_accountnum>"
    Then I click let's go button
    Then I should be in existing products page
    Then I click on Make changes button
    Then I should be in Product offer page
    Then I select HomePhone
    Then Take a ScreenShot "<scen>"
    Then I select required option for voice mail "<Voice Mail>"
    Then I select required option for Wire Maintenance Plan "<Wire Maintenance Plan>"
    And I click on continue button
    Then I should be in customize service page
    And I click again on contine button
    And I click on continue button of scheduling page
    And I click on continue button on Account Information page for MACD orders
    And I selected Yes for the review in order summary page
    Then I clicked submit order button
    Then I get account number from application
    Then Take a ScreenShot "<scen>"
    Then I Click on start new order button
    And I enter the "<firstName>" "<lastName>" "<phoneNo>" in ESHOP customer information screen
    Then I click on Account or Order already exists
    And I enter only the completed account "<completed_accountnum>"
    Then I click let's go button
    Then I should be in existing products page
    And I click on DisconnectAll
    Then I enter Internet Disconnect Reason
    Then Take a ScreenShot "<scen>"
    And I click again on continue button on DIS Page
    And I click on continue button on Scheduling page of Disconnect Order
    And I select No PaperLess billing option 
    And I select current Billing Address option
    And I click on continue button on Account Information
    And I selected Yes for the review in order summary page
    Then I clicked submit order button
    Then I get account number from application
    Then I validate Databases for statas"<filelocation1>" "<TCID>"
     
      Examples: 
      | Env | firstName | lastName | phoneNo    | completed_accountnum |Voice Mail  | Wire Maintenance Plan |scen           |filelocation1                                            |TCID| 
      | E2E | THOMAS    | HILLA    | 4043564343 | 683305264            | No         | No                    |CToE_REQ_14.4  |../EshopTools/Database_Validation/Database_Scenario.xlsx |1.6 |    
      
      
   
    
      
    
   