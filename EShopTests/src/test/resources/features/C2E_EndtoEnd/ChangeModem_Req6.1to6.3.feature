@EshopTestScripts @MACDScripts @MACD_Change
Feature: MACD Scenarios on change modem for Migrated HSI Postpaid accounts 

   #Sachin script
      @CToE_REQ_6.1
     Scenario Outline: MACD Scenario on Change Modem to Purchase Modem 6.1
	   Given I should be on Eshop login screen
     When I enter username and password
     And I enter the "<firstName>" "<lastName>" "<phoneNo>" in ESHOP customer information screen
     Then I click on Account or Order already exists
     And I enter only the completed account "<completed_accountnum>"
     Then I click let's go button
     Then I should be in existing products page
     Then I click on Make changes button
     Then I should be in Product offer page
     And I select Your "<Modem_Option>" Modem option
     Then Take a ScreenShot "<scen>"
     And I click on continue button
     Then I should be in customize service page
     And I click again on contine button
     And I click on continue button of scheduling page
     And I click on continue button on Account Information page for MACD orders
     And I selected Yes for the review in order summary page
     Then I clicked submit order button
     Then I get account number from application
     Then Take a ScreenShot "<scen>"
     Then I validate Databases for statas and update file"<filelocation1>" "<TCID>" "<scen>"
     #Then I get order number from application and provision it in Env "<Environment>" 
     Then Take a ScreenShot "<scen>"
     
      
       Examples: 
    | Environment  | Env | firstName | lastName | phoneNo    |  Modem_Option             | completed_accountnum |scen           |filelocation1                                            |TCID|
    | Test2        | E2E | THOMAS    | HILLA    | 4043564343 |  Purchased Modem ($200)   |  690105427           |CToE_REQ_6.1   |../EshopTools/Database_Validation/Database_Scenario.xlsx |1.6 |
      
         

  #Sachin script
     @CToE_REQ_6.2
     Scenario Outline: MACD Scenario on Change Modem to Own Modem 6.2
	   Given I should be on Eshop login screen
     When I enter username and password
     And I enter the "<firstName>" "<lastName>" "<phoneNo>" in ESHOP customer information screen
     Then I click on Account or Order already exists
     And I enter only the completed account "<completed_accountnum>"
     Then I click let's go button
     Then I should be in existing products page
     Then I click on Make changes button
     Then I should be in Product offer page
     Then I click on Bypass modem rule option
     And I select Your "<Modem_Option>" Modem option
     Then Take a ScreenShot "<scen>"
     And I click on continue button
     Then I should be in customize service page
     And I click again on contine button
     And I click on continue button of scheduling page
     And I click on continue button on Account Information page for MACD orders
     And I selected Yes for the review in order summary page
     Then I clicked submit order button
     Then I get account number from application
     Then Take a ScreenShot "<scen>"
     Then I validate Databases for statas and update file"<filelocation1>" "<TCID>" "<scen>"
     #Then I get order number from application and provision it in Env "<Environment>" 
     Then Take a ScreenShot "<scen>"
      
       Examples: 
     | Environment  | Env | firstName | lastName | phoneNo    |  Modem_Option         | completed_accountnum |scen           |filelocation1                                            |TCID|
     | Test2        | E2E | THOMAS    | HILLA    | 4043564343 | Use Own Modem ($0/mo) | 690084216            |CToE_REQ_6.2   |../EshopTools/Database_Validation/Database_Scenario.xlsx |1.6 |
      
      
      
      #Sachin script
        @CToE_REQ_6.3
     Scenario Outline: MACD Scenario on Change Modem to Lease Modem 6.3
	   Given I should be on Eshop login screen
     When I enter username and password
     And I enter the "<firstName>" "<lastName>" "<phoneNo>" in ESHOP customer information screen
     Then I click on Account or Order already exists
     And I enter only the completed account "<completed_accountnum>"
     Then I click let's go button
     Then I should be in existing products page
     Then I click on Make changes button
     Then I should be in Product offer page
     And I select Your "<Modem_Option>" Modem option
     Then Take a ScreenShot "<scen>"
     And I click on continue button
     Then I should be in customize service page
     And I click again on contine button
     And I click on continue button of scheduling page
     And I click on continue button on Account Information page for MACD orders
     And I selected Yes for the review in order summary page
     Then I clicked submit order button
     Then I get account number from application
     Then Take a ScreenShot "<scen>"
     Then I validate Databases for statas and update file"<filelocation1>" "<TCID>" "<scen>"
     #Then I get order number from application and provision it in Env "<Environment>" 
     Then Take a ScreenShot "<scen>"
      
       Examples: 
     | Environment  | Env | firstName | lastName | phoneNo    | Modem_Option             | completed_accountnum |scen           |filelocation1                                            |TCID|
     | Test2        | E2E | THOMAS    | HILLA    | 4043564343 | Purchased Modem ($200)   | 690102059            |CToE_REQ_6.3   |../EshopTools/Database_Validation/Database_Scenario.xlsx |1.6 |
      
      
  