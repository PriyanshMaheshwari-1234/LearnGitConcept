@EshopTestScripts @MACDScripts @MACD_Change
Feature: MACD Scenarios on billing and record correction for pending orders on Migrated HSI Postpaid accounts

 #Prathibha script
    @ATC_MACD_3.1
   Scenario Outline: MACD Scenario on H S I Speed change B2B 3.1
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
    Then I select the best "<Installation_option>" installation option
    Then Take a ScreenShot "<scen>"
    And I click on continue button
    Then I should be in customize service page
    And I click again on contine button
    And I click on continue button of scheduling page
    And I click on continue button on Account Information page for MACD orders
    And I selected Yes for the review in order summary page
    Then I clicked submit order button
    Then I should able to submit order successfully
    Then I get account number from application
    Then Take a ScreenShot "<scen>"
    Then I validate Databases for statas and update file"<filelocation1>" "<TCID>" "<scen>"
    #Then I get order number from application and provision it in Env "<Environment>" 
     Then Take a ScreenShot "<scen>"
   
    
    Examples: 
    | Environment  | Env | firstName | lastName | phoneNo    |account number| address                                  | Date | Month | Year | SSN       | contactNumber| zip code | Ease_Option |Select_speed                |Wire Maintenance Plan | Port in a phone number? | Need new jacks or wiring? |Installation_option  | Modem_Option |scen           |filelocation1                                            |TCID|
    | Test2        | E2E | Jones     | Smith    | 4029986730 |690103403     | 1693 GARFIELD AVE, DUBUQUE, IA,52001,USA | 02   |    02 | 1987 | 666601283 | 6666012834   |No        | BASIC       |HSI Up to 100 Mbps/10 Mbps  | No                   | No                      | No Work Is Needed ($0/mo) |Self Install ($0/mo) | LEASE        |ATC_MACD_3.1  |../EshopTools/Database_Validation/Database_Scenario.xlsx |1.6 |
    
    
      #prathibha script
    @ATC_MACD_3.2
  Scenario Outline: MACD Scenario on H S I Speed change with Jack B2B 3.2
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
    Then I select the best "<Installation_option>" installation option
    Then Take a ScreenShot "<scen>"
    And I click on continue button
    Then I should be in customize service page
    Then I select options from technician charges "<add_Jack>"
    And I click again on contine button
    And I click to reserve appointment
    Then Take a ScreenShot "<scen>"
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
    | Environment  | Env | firstName | lastName | phoneNo    |account number| address                                  | Date | Month | Year | SSN       | contactNumber| zip code | Ease_Option |Select_speed                |Wire Maintenance Plan | Port in a phone number? | Need new jacks or wiring? |Installation_option  | Modem_Option |scen           |filelocation1                                            |TCID|
    | Test2        | E2E | Jones     | Smith    | 4029986730 |690103403     | 1693 GARFIELD AVE, DUBUQUE, IA,52001,USA | 02   |    02 | 1987 | 666601283 | 6666012834   |No        | BASIC       |HSI Up to 100 Mbps/10 Mbps  | No                   | No                      | No Work Is Needed ($0/mo) |Self Install ($0/mo) | LEASE        |ATC_MACD_3.2   |../EshopTools/Database_Validation/Database_Scenario.xlsx |1.6 |
   


      #Prathibha script
       @ATC_MACD_3.4
  Scenario Outline: MACD Scenario on H S I Speed change B2B 3.4
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
    Then I select the best "<Installation_option>" installation option
    And I select Your "<Modem_Option>" Modem option
    And I select "<Ease_Option>" Ease Option
    Then Take a ScreenShot "<scen>"
    And I click on continue button
    Then I should be in customize service page
    And I click again on contine button
    And I click to reserve appointment
    And I click on continue button of scheduling page
    And I click on continue button on Account Information page for MACD orders
    And I selected Yes for the review in order summary page
    Then I clicked submit order button
    Then I should able to submit order successfully
    Then I get account number from application
    Then Take a ScreenShot "<scen>"
    Then I validate Databases for statas and update file"<filelocation1>" "<TCID>" "<scen>"
    #Then I get order number from application and provision it in Env "<Environment>" 
     Then Take a ScreenShot "<scen>"
    
    
    Examples: 
    | Environment  | Env | firstName | lastName | phoneNo    |account number|  Date | Month | Year | SSN       | zip code | Ease_Option |Select_speed                |Installation_option  | Modem_Option          |scen           |filelocation1                                            |TCID|
    | Test2        | E2E | Jones     | Smith    | 4029986730 |690087888     |  02   |    02 | 1987 | 666601283 |No        |Basic ($0/mo)|HSI Up to 30 Mbps/1.5 Mbps  |Tech Install ($99)   | Purchased Modem ($200)|ATC_MACD_3.4 |../EshopTools/Database_Validation/Database_Scenario.xlsx |1.6 |
    
    
    #Prathibha Script
   @ATC_MACD_3.3
  Scenario Outline: MACD Scenario on H S I during  CH  add POTS and WM and JACK 3.3
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
    Then I select required option for Need new jacks or wiring? "<Need new jacks or wiring?>"
    Then Take a ScreenShot "<scen>"
    And I click on continue button
    Then I should be in customize service page
    And I click again on contine button
    And I click to reserve appointment
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
    | Environment   | Env | firstName | lastName | phoneNo    |account number|  Date | Month | Year | SSN       | zip code | Voice Mail     | Wire Maintenance Plan | Need new jacks or wiring? |scen           |filelocation1                                            |TCID|
    | Test2         | E2E | Jones     | Smith    | 4029986730 |690087855     |  02   |    02 | 1987 | 666601283 | No       | Yes ($0.00/mo) | Yes ($11.00/mo)       |Yes, 1st Jack ($99)        |ATC_MACD_3.3  |../EshopTools/Database_Validation/Database_Scenario.xlsx |1.6 |  
   