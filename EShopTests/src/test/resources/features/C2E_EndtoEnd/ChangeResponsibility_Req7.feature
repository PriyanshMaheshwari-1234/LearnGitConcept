@EshopTestScripts @MACDScripts @MACD_Change
Feature: MACD Scenarios on change responsibili for Migrated HSI Postpaid accounts


#Priyansh script 

 @ChangeResponsibility7.0
    Scenario Outline: Change Responsibility 7.0
	  Given I should be on Eshop login screen
    When I enter username and password
    And I enter the "<firstName>" "<lastName>" "<phoneNo>" in ESHOP customer information screen
    Then I click on Account or Order already exists
    When I enter only the completed account "<ExistAccount>"
    Then I click let's go button
    Then I should be in existing products page
    Then I should click on change responsibility button
    
    Then I change the "<newFirstName>" and "<newLastname>"
    Then Take a ScreenShot "<scen>"
   
    And I enter date "<Date>" month "<Month>" and year "<Year>" of birth
    And I enter SSN number "<SSN>"
     And I select credit as "BypassCreditCheck"
    And I click on account Continue button
    
    And I click again click Continue button on account
    And I selected Yes for the review in order summary page
    
    Then I clicked submit order button
    Then I get account number from application
    Then Take a ScreenShot "<scen>"
    Then I validate Databases for statas and update file"<filelocation1>" "<TCID>" "<scen>"
    #Then I get order number from application and provision it in Env "<Environment>" 
     Then Take a ScreenShot "<scen>"
    
     Examples: 
     | Environment  | Env | firstName  | lastName  | newFirstName | newLastname | phoneNo    |ExistAccount   |Date | Month | Year | SSN        | Device Quantity |scen                   |filelocation1											                      |TCID|
     | Test2        | E2E |  Jones     |  Smith    |  Tommy       | Jerry       | 4029986730 | 690105983     | 02  |    02 | 1987 | 3450380580 | 1 device        |ChangeResponsibility7.0|../EshopTools/Database_Validation/Database_Scenario.xlsx|1.6 | 
	  
  