@EshopTestScripts @MACDScripts @MACD_Change
Feature: MACD Scenarios on amend orders for Migrated HSI Postpaid accounts for SUP1 

#swati script
 @SpeedChangecancel2.1
    Scenario Outline: MACD Scenario on HSI change the speed and the cancel the order 2.1
    
    #Given I should be on SFC login screen
    #When I enter username and password
    #Below two commented steps are Future Ready steps for MACD Scenarios
    #Then I move back to existing SFC page
    #Then I search order in SFC page with account number
    #Then I search order in SFC page with account number "<account number>"
    #Then I click on order eshop button in SFC page to proceed to Eshop Page
    Given I should be on Eshop login screen
    When I enter username and password
    And I enter the "<firstName>" "<lastName>" "<phoneNo>" in ESHOP customer information screen
    Then I click on Account or Order already exists
    When I enter only the completed account "<account number>"
    Then I click let's go button
    Then I should be in existing products page
    Then I click on Make changes button
    Then I choose last speed option
	  Then I select the best "<Installation_option>" installation option
	  Then Take a ScreenShot "<scen>"
    And I click on continue button
    Then I should be in customize service page
    And I click again on contine button
    And I click to reserve appointment
    And I click on continue button of scheduling page
    And I click on continue button on Account Information page for MACD orders
    And I selected Yes for the review in order summary page
    Then I enter the special remark in Additional Order Remarks field "<Additional Order Remarks>"
    Then I clicked submit order button
    Then I should able to submit order successfully
    Then I get account number from application
    Then Take a ScreenShot "<scen>"
    
    Then I Click on start new order button
    And I enter the "<firstName>" "<lastName>" "<phoneNo>" in ESHOP customer information screen
    Then I click on Account or Order already exists
    When I enter only the completed account "<account number>"
    Then Take a ScreenShot "<scen>"
    Then I click let's go button
    Then I should be in existing products page
    Then I Click on summary on pending change order
    Then I click on other actions button on pending order page
    Then I click on cancel order button on pending order page
    Then I confirm the cancelation of the order
    Then Take a ScreenShot "<scen>"
    Then I validate Databases for statas and update file"<filelocation1>" "<TCID>" "<scen>"
    #Then I get order number from application and provision it in Env "<Environment>" 
     Then Take a ScreenShot "<scen>"
    
      	   Examples: 
    | Environment   | Env | firstName | lastName | phoneNo    | account number  | Installation_option   |Additional Order Remarks        | scen                 |filelocation1                                            |TCID|
    | Test2         | E2E | POST      | RED      | 4029589898 |   690084432     | Tech Install ($99)    | ESHOP ORDER TEST BY AUTOMATION | SpeedChangecancel2.1 |../EshopTools/Database_Validation/Database_Scenario.xlsx |1.6 |
    
    
    #swati script
 @HSIAddJACKCancel2.3
 Scenario Outline: MACD Scenario on HSI  during  CH add JACK and cancel the order 2.3
    
    #Given I should be on SFC login screen
    #When I enter username and password
    #Below two commented steps are Future Ready steps for MACD Scenarios
    #Then I move back to existing SFC page
    #Then I search order in SFC page with account number
    #Then I search order in SFC page with account number "<account number>"
    #Then I click on order eshop button in SFC page to proceed to Eshop Page
    Given I should be on Eshop login screen
    When I enter username and password
    And I enter the "<firstName>" "<lastName>" "<phoneNo>" in ESHOP customer information screen
    Then I click on Account or Order already exists
    When I enter only the completed account "<account number>"
    Then I click let's go button
    Then I should be in existing products page
    Then I click on Make changes button
    And I click on continue button
    Then I should be in customize service page
    Then I select options from technician charges "<tech_options>"
    Then Take a ScreenShot "<scen>"
    And I click again on contine button
	  And I click to reserve appointment
    And I click on continue button of scheduling page
	  And I click on continue button on Account Information page for MACD orders
    When I selected Yes for the review in order summary page
    Then I enter the special remark in Additional Order Remarks field "<Additional Order Remarks>"
    Then I clicked submit order button
    Then I should able to submit order successfully
    Then I get account number from application
    Then Take a ScreenShot "<scen>"
    
    Then I Click on start new order button
    And I enter the "<firstName>" "<lastName>" "<phoneNo>" in ESHOP customer information screen
    Then I click on Account or Order already exists
    When I enter only the completed account "<account number>"
    Then Take a ScreenShot "<scen>"
    Then I click let's go button
    Then I should be in existing products page
    Then I Click on summary on pending change order
    Then I click on other actions button on pending order page
    Then I click on cancel order button on pending order page
    Then I confirm the cancelation of the order
    Then Take a ScreenShot "<scen>"
    Then I validate Databases for statas and update file"<filelocation1>" "<TCID>" "<scen>"
    #Then I get order number from application and provision it in Env "<Environment>" 
     Then Take a ScreenShot "<scen>"
    
    	   Examples: 
     | Environment  | Env | firstName | lastName | phoneNo    | account number  |scen                |filelocation1                                            |TCID|  
     | Test2        | E2E | POST      | RED      | 4029589898 |   690084432     |HSIAddJACKCancel2.3 |../EshopTools/Database_Validation/Database_Scenario.xlsx |1.6 |  
    
  
  