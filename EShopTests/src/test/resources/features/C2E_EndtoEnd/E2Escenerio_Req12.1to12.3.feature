@EshopTestScripts @MACDScripts @MACD_Change
Feature: MACD Scenarios on E2E scenerio for Migrated HSI Postpaid accounts 

#Pratibha script
  @ATC_MACD_12.1
  Scenario Outline: MACD Scenario on H S I during  CH  add POTS and then perform E2E verification 12.1
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
    Then I should be in Product offer page
    Then I select HomePhone
    Then I select required option for voice mail "<Voice Mail>"
    Then I select required option for Wire Maintenance Plan "<Wire Maintenance Plan>"
    Then I select required option for Port in a phone number? "<Port in a phone number?>"
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
    Then I validate Databases for statas and update file"<filelocation1>" "<TCID>" "<scen>"
    #Then I get order number from application and provision it in Env "<Environment>" 
     Then Take a ScreenShot "<scen>"
    
    Examples: 
    | Environment   | Env | firstName | lastName | phoneNo    |account number| address                                  | Date | Month | Year | SSN       | zip code | Ease_Option | Voice Mail | Wire Maintenance Plan | Port in a phone number? | Need new jacks or wiring? |scen           |filelocation1                                            |TCID|
    | Test2         | E2E | Jones     | Smith    | 4029986730 |690083704     | 1693 GARFIELD AVE, DUBUQUE, IA,52001,USA | 02   |    02 | 1987 | 666601283 | No       | BASIC       | No         | No                    | No                      |  No Work Is Needed ($0/mo)|ATC_MACD_12.1  |../EshopTools/Database_Validation/Database_Scenario.xlsx |1.6 |
  


#Swati script
 @SpeedChangewithJACK12.2
     Scenario Outline: MACD Scenario on HSI change the speed and add JACK and then perform E2E bill generation and verification 12.2
    
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
    Then I select the Available speed on change order "<Select_speed>"
	  Then I select the best "<Installation_option>" installation option
	  Then Take a ScreenShot "<scen>"
    And I click on continue button
    Then I should be in customize service page
    Then I select options from technician charges "<tech_options>"
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
    Then I validate Databases for statas and update file"<filelocation1>" "<TCID>" "<scen>"
    #Then I get order number from application and provision it in Env "<Environment>" 
     Then Take a ScreenShot "<scen>"
    
    
      	   Examples: 
    | Environment   | Env | firstName | lastName | phoneNo    | account number  |   Select_speed             | Installation_option  |Additional Order Remarks        |scen                    |filelocation1                                            |TCID| 
    | Test2         | E2E | POST      | RED      | 4029589898 |   690084432     | HSI Up to 100 Mbps/10 Mbps | Tech Install ($99)   | ESHOP ORDER TEST BY AUTOMATION |SpeedChangewithJACK12.2 |../EshopTools/Database_Validation/Database_Scenario.xlsx |1.6 |
  
  
   #Sachin Script
      @CToE_REQ_12.3
    Scenario Outline: MACD Scenario on change to SpeedUpgrade_Tech install_Ease Option 12.3
	  Given I should be on Eshop login screen
    When I enter username and password
    And I enter the "<firstName>" "<lastName>" "<phoneNo>" in ESHOP customer information screen
    Then I click on Account or Order already exists
    And I enter only the completed account "<completed_accountnum>"
    Then I click let's go button
    Then I should be in existing products page
    Then I click on Make changes button
    Then I should be in Product offer page
    Then I select the Available speed on change order "<Selectspeed>"
    Then I select the best "<Installation_option>" installation option
    Then Take a ScreenShot "<scen>"
    Then I select "<Ease_Option>" Ease Option
    And I click on continue button
    Then I should be in customize service page
    And I click again on contine button
    And I click to reserve appointment
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
    | Environment   | Env | firstName | lastName | phoneNo    | Selectspeed                  | Installation_option | Ease_Option   | completed_accountnum |scen           |filelocation1                                            |TCID|
    | Test2         | E2E | THOMAS    | HILLA    | 4043564343 | HSI Up to 100 Mbps/10 Mbps   | Tech Install ($99)  | Basic ($0/mo) | 690084205            |CToE_REQ_12.3  |../EshopTools/Database_Validation/Database_Scenario.xlsx |1.6 |
  
  
  
   
