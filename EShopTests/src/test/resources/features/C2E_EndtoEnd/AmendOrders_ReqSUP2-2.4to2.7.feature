@EshopTestScripts @MACDScripts @MACD_Change
Feature: MACD Scenarios on amend orders for Migrated HSI Postpaid accounts for SUP2

#swati script
    @HSISpeedChangewithduedate2.4
  Scenario Outline: MACD Scenario on HSI Speed change with selection of due date 2.4
   
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
    And I select the provided due date for installation "<Due Date>"
    And I click on continue button of scheduling page
    And I click on continue button on Account Information page for MACD orders
    And I selected Yes for the review in order summary page
    Then I enter the special remark in Additional Order Remarks field "<Additional Order Remarks>"
    Then I clicked submit order button
    Then I should able to submit order successfully
    Then I get account number from application
    Then Take a ScreenShot "<scen>"
    Then I validate Databases for statas and update file"<filelocation1>" "<TCID>" "<scen>"
    #Then I get order number from application and provision it in Env "<Environment>" 
     Then Take a ScreenShot "<scen>"
    
    
    Examples: 
    | Environment  | firstName | lastName | phoneNo    | account number  | Installation_option   | email       | SMSNo      |  zip code |Additional Order Remarks        | Due Date |scen                         |filelocation1                                            |TCID|
    | Test2        | POST      | RED      | 4029986730 | 690084432       |  Tech Install ($99)   | Ctl@Ctl.com | 4029986730 |    37638  | ESHOP ORDER TEST BY AUTOMATION | Sep10    |HSISpeedChangewithduedate2.4 |../EshopTools/Database_Validation/Database_Scenario.xlsx |1.6 |


#swati script
  @HSIAddPOTSWithDueDate2.5
  Scenario Outline: MACD Scenario on H S I  during  CH add POTS with due date selection 3.3
    
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
    Then I should be in Product offer page
    Then I add POTS product on existing product page
    Then I select required option for voice mail "<Voice Mail>"
    Then I select required option for Wire Maintenance Plan "<Wire Maintenance Plan>"
    Then Take a ScreenShot "<scen>"
    And I click on continue button
    Then I should be in customize service page
    And I click again on contine button
	  Then I select the provided due date for installation in Due Date format "<Due Date>"
	  Then Take a ScreenShot "<scen>"
    And I click on continue button of scheduling page
	  And I click on continue button on Account Information page for MACD orders
    When I selected Yes for the review in order summary page
    Then I enter the special remark in Additional Order Remarks field "<Additional Order Remarks>"
    Then I clicked submit order button
    Then I should able to submit order successfully
    Then I get account number from application
    Then Take a ScreenShot "<scen>"
    Then I validate Databases for statas and update file"<filelocation1>" "<TCID>" "<scen>"
    #Then I get order number from application and provision it in Env "<Environment>" 
     Then Take a ScreenShot "<scen>"
    
       Examples: 
     | Environment  | firstName | lastName | phoneNo      | account number | Installation_option  | Due Date | Modem_Option          | email       | SMSNo       | zip code | Voice Mail | Wire Maintenance Plan | Port in a phone number? | Additional Order Remarks       |scen                    |filelocation1                                            |TCID|
     | Test2        | Jones     | Smith    | 7647847888   |    690084432   | Tech Install ($99)   | Sep10   | Use Own Modem ($0/mo) | Ctl@Ctl.com | 4029986730  |    37638 | No         | No                    | No                      | ESHOP ORDER TEST BY AUTOMATION |HSIAddPOTSWithDueDate3.3|../EshopTools/Database_Validation/Database_Scenario.xlsx |1.6 |
    
 
 #swati script
 @HSIAddJACKNoPAY2.6
 Scenario Outline: MACD Scenario on HSI  during  CH add JACK and change the due date 2.6
    
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
	  And I select the provided due date for installation "<Due Date>"
    And I click on continue button of scheduling page
	  And I click on continue button on Account Information page for MACD orders
    When I selected Yes for the review in order summary page
    Then I enter the special remark in Additional Order Remarks field "<Additional Order Remarks>"
    Then I clicked submit order button
    Then I should able to submit order successfully
    Then I get account number from application
    Then Take a ScreenShot "<scen>"
    Then I validate Databases for statas and update file"<filelocation1>" "<TCID>" "<scen>"
    #Then I get order number from application and provision it in Env "<Environment>" 
     Then Take a ScreenShot "<scen>"
    
    	   Examples: 
     | Environment  | Env | firstName | lastName | phoneNo    | account number  |  Due Date |scen               |filelocation1                                            |TCID|
     | Test2        | E2E | POST      | RED      | 4029589898 |   683173593     |  Sep10    |HSIAddJACKNoPAY1.9 |../EshopTools/Database_Validation/Database_Scenario.xlsx |1.6 |
    
    
    #Prathibha script
 @ATC_MACD_2.7
    Scenario Outline: MACD Scenario on Existing HSI customer- speed change- place order on hold- unhold and then DD change 2.7
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
    Then I click on Make changes button
    Then I select the Available speed on change order "<Select_speed>"
    And I click on continue button
    Then I should be in customize service page
    And I place the order on Hold
    Then Take a ScreenShot "<scen>"
    
    Then I Click on start new order button
    And I enter the "<firstName>" "<lastName>" "<phoneNo>" in ESHOP customer information screen
    Then I click on Account or Order already exists
    When I enter only the completed account "<account number>"
    Then Take a ScreenShot "<scen>"
    Then I click let's go button
    Then I should be in existing products page
    Then I click on Resume order 
    Then Take a ScreenShot "<scen>"
    And I click on continue button
    Then I should be in customize service page
    And I click again on contine button
    Then I click on Duedate calender to change DD1
    And I click on continue button of scheduling page
    And I click on continue button on Account Information page for MACD orders
    When I selected Yes for the review in order summary page
    Then I clicked submit order button
    Then I should able to submit order successfully
    Then I get account number from application
    Then Take a ScreenShot "<scen>"
    Then I validate Databases for statas and update file"<filelocation1>" "<TCID>" "<scen>"
    #Then I get order number from application and provision it in Env "<Environment>" 
     Then Take a ScreenShot "<scen>"
    
    Examples: 
    | Environment  | Env | firstName | lastName | phoneNo    |account number| Due Date  | Select_speed               | Ease_Option | Voice Mail | Wire Maintenance Plan | Port in a phone number? | Need new jacks or wiring? |scen           |filelocation1                                            |TCID|
    | Test2        | E2E | Jones     | Smith    | 4029986730 |690103414     | Aug28     | HSI Up to 100 Mbps/10 Mbps | BASIC       | No         | No                    | No                      |  No Work Is Needed ($0/mo)|ATC_MACD_2.7   |../EshopTools/Database_Validation/Database_Scenario.xlsx |1.6 |
   
  