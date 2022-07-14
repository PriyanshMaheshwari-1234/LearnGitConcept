@EshopTestScripts @MACDScripts @MACD_Change
Feature: MACD Scenarios on non-pay suspend/restore for migrated HSI customer

 @CToE_REQ_9.1.2
    Scenario Outline: MACD Scenario to existing HSI account Restore for Non pay 9.1.2
	  Given I should be on Eshop login screen
    When I enter username and password
    And I enter the "<firstName>" "<lastName>" "<phoneNo>" in ESHOP customer information screen
    Then I click on Account or Order already exists
    And I enter only the completed account "<completed_accountnum>"
    Then I click let's go button
    Then I should be in existing products page
    Then I select suspend or restore from other activities
    Then Take a ScreenShot "<scen>"
    Then I should be in Suspend and Restore page
    Then I Click on RestoreAll for entire Ban
    Then I click on Submit Button on Suspend and Restore Page
    Then I get account number from application
    Then Take a ScreenShot "<scen>"
    Then I validate Databases for statas and update file"<filelocation1>" "<TCID>" "<scen>"
    #Then I get order number from application and provision it in Env "<Environment>" 
     Then Take a ScreenShot "<scen>"

      Examples: 
     | Environment  | Env | firstName | lastName | phoneNo    | completed_accountnum |scen           |filelocation1                                            |TCID|
     | Test2        | E2E | THOMAS    | HILLA    | 4043564343 | 683183222            |CToE_REQ_9.1.2 |../EshopTools/Database_Validation/Database_Scenario.xlsx |1.6 |
  

# Sachin Script for file for  Migrated HSI account suspend for non pay suspend/restore 

  @CToE_REQ_9.1.1
    Scenario Outline: MACD Scenario to existing HSI account suspend for Non pay 9.1.1
	  Given I should be on Eshop login screen
    When I enter username and password
    And I enter the "<firstName>" "<lastName>" "<phoneNo>" in ESHOP customer information screen
    Then I click on Account or Order already exists
    And I enter only the completed account "<completed_accountnum>"
    Then I click let's go button
    Then I should be in existing products page
    Then I select suspend or restore from other activities
    Then Take a ScreenShot "<scen>"
    Then I should be in Suspend and Restore page
    Then I Click on Suspend All for entire Ban
    Then I click on Submit Button on Suspend and Restore Page
    Then I get account number from application
    Then Take a ScreenShot "<scen>"
    Then I validate Databases for statas and update file"<filelocation1>" "<TCID>" "<scen>"
    #Then I get order number from application and provision it in Env "<Environment>" 
     Then Take a ScreenShot "<scen>"
 
     Examples: 
    | Environment   | Env | firstName | lastName | phoneNo    | completed_accountnum |scen           |filelocation1                                            |TCID|
    | Test2         | E2E | THOMAS    | HILLA    | 4043564343 | 683183222            |CToE_REQ_9.1.1 |../EshopTools/Database_Validation/Database_Scenario.xlsx |1.6 |
  
  
   #Prathibha script
   @ATC_MACD_9.2
     Scenario Outline: Disconnect of a migrated non-pay suspended account 9.2
    #Given I should be on SFC login screen
    #When I enter username and password
    #Below two commented steps are Future Ready steps for MACD Scenarios
    #Then I move back to existing SFC page
    #Then I search order in SFC page with account number
    #Then I search order in SFC page with account number "<account number>"
    #Then I click on order eshop button in SFC page to proceed to Eshop Page
    #Then I should be in existing products page
    #Then I click on Make changes button
    Given I should be on Eshop login screen
    When I enter username and password
    And I enter the "<firstName>" "<lastName>" "<phoneNo>" in ESHOP customer information screen
    Then I click on Account or Order already exists
    When I enter only the completed account "<account number>"
    Then I click let's go button
    Then I should be in existing products page
    And I click on DisconnectAll
    Then I enter Internet Disconnect Reason
    Then Take a ScreenShot "<scen>"
    And I click again on continue button on DIS Page
    And I click on continue button on Scheduling page of Disconnect Order
    And I select current Billing Address option
    Then Take a ScreenShot "<scen>"
    And I click on continue button on Account Information
    And I selected Yes for the review in order summary page
    Then I clicked submit order button
    Then I get account number from application
    Then Take a ScreenShot "<scen>"
    Then I validate Databases for statas and update file"<filelocation1>" "<TCID>" "<scen>"
    #Then I get order number from application and provision it in Env "<Environment>" 
     Then Take a ScreenShot "<scen>"
     
    Examples: 
    | Environment   | Env | firstName | lastName | phoneNo    | account number |scen           |filelocation1                                            |TCID|
    | Test2         | E2E | Jones     | Smith    | 4029986730 |      690103414 |ATC_MACD_9.2   |../EshopTools/Database_Validation/Database_Scenario.xlsx |1.6 |
      
   