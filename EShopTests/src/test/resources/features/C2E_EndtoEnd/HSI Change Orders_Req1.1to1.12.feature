@EshopTestScripts @MACDScripts @MACD_Change
Feature: MACD Scenarios on Change of orders for Migrated HSI postpaid customers 

 #Prathibha script
  @ATC_MACD_1.1
  Scenario Outline: MACD Scenario on H S I during  CH  add POTS 1.1
  
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
    | Test2         | E2E | Jones     | Smith    | 4029986730 |690083704     | 1693 GARFIELD AVE, DUBUQUE, IA,52001,USA | 02   |    02 | 1987 | 666601283 | No       | BASIC       | No         | No                    | No                      |  No Work Is Needed ($0/mo)|ATC_MACD_1.1   |../EshopTools/Database_Validation/Database_Scenario.xlsx |1.6 |
  
  
  #prathibha script
    @ATC_MACD_1.3
  Scenario Outline: MACD Scenario on H S I during  CH  add DTV 1.3
   Given I should be on Eshop login screen
    When I enter username and password
    And I enter the "<firstName>" "<lastName>" "<phoneNo>" in ESHOP customer information screen
   Then I click on Account or Order already exists
   When I enter only the completed account "<ExistAccount>"
    Then I click let's go button
    Then I should be in existing products page
    Then I click on Make changes button
    Then I select DTV
    Then Take a ScreenShot "<scen>"
    And I select "<Ease_Option>" Ease Option
    And I click on continue button
    Then I should be in customize service page
    Then I click again on contine button
    And I click on continue button of scheduling page
    Then I click on launch OPUS
   Then do I create a new DTV account "<Choice>" "<ExistAccount>"
   Then Take a ScreenShot "<scen>"	
   And I selected Yes for the review in order summary page
   Then I clicked submit order button
   Then I get account number from application
   Then Take a ScreenShot "<scen>"
    Then I validate Databases for statas and update file"<filelocation1>" "<TCID>" "<scen>"
    #Then I get order number from application and provision it in Env "<Environment>" 
     Then Take a ScreenShot "<scen>"
 
  Examples: 
    | Environment   | Env | firstName | lastName | phoneNo    | ExistAccount   | Choice |Ease_Option    |scen           |filelocation1                                            |TCID|
    | Test2         | E2E | Thomas    | Hilla    | 4029986730 | 690107225      | No     | Basic ($0/mo) |ATC_MACD_1.3   |../EshopTools/Database_Validation/Database_Scenario.xlsx |1.6 |
   
  
  
   #Swati script
  @HSISpeedDowngrade1.4 
  Scenario Outline: MACD Scenario on HSI Speed Downgrade with same technology 1.4
    
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
    And I click again on contine button
    And I click to reserve appointment
    And I click on continue button of scheduling page
    And I click on continue button on Account Information page for MACD orders
    And I selected Yes for the review in order summary page
    Then Take a ScreenShot "<scen>"
    Then I enter the special remark in Additional Order Remarks field "<Additional Order Remarks>"
    Then I clicked submit order button
    Then I should able to submit order successfully
    Then I get account number from application
    Then Take a ScreenShot "<scen>"
    Then I validate Databases for statas and update file"<filelocation1>" "<TCID>" "<scen>"
    #Then I get order number from application and provision it in Env "<Environment>" 
     Then Take a ScreenShot "<scen>"
    
    
    Examples: 
    | Environment  | firstName | lastName | phoneNo    | account number  | Select_speed               | Installation_option | email       | SMSNo      |  zip code |Additional Order Remarks        |scen                 |filelocation1                                            |TCID| 
    | Test2        | POST      | RED      | 4029986730 | 690084432       |  HSI Up to 100 Mbps/10 Mbps | Tech Install ($99)  | Ctl@Ctl.com | 4029986730 |    37638  | ESHOP ORDER TEST BY AUTOMATION |HSISpeedDowngrade1.4 |../EshopTools/Database_Validation/Database_Scenario.xlsx |1.6 |
  
  
  #swati script
  @HSISpeedUpgradewithtechinstall1.5
  Scenario Outline: MACD Scenario on HSI Speed Upgrade with Tech Install 1.5
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
    And I click again on contine button
    And I click to reserve appointment
    And I click on continue button of scheduling page
    And I click on continue button on Account Information page for MACD orders
    And I selected Yes for the review in order summary page
    Then Take a ScreenShot "<scen>"
    Then I enter the special remark in Additional Order Remarks field "<Additional Order Remarks>"
    Then I clicked submit order button
    Then I should able to submit order successfully
    Then I get account number from application
    Then Take a ScreenShot "<scen>"
    Then I validate Databases for statas and update file"<filelocation1>" "<TCID>" "<scen>"
    #Then I get order number from application and provision it in Env "<Environment>" 
     Then Take a ScreenShot "<scen>"
    
    
    Examples: 
    | Environment  | firstName | lastName | phoneNo    | account number  | Select_speed                | Installation_option  | email       | SMSNo      |  zip code |Additional Order Remarks        |scen                             |filelocation1                                            |TCID| 
    | Test2        | POST      | RED      | 4029986730 | 690084432       |  HSI Up to 15 Mbps/750 Kbps | Tech Install ($99)   | Ctl@Ctl.com | 4029986730 |    37638  | ESHOP ORDER TEST BY AUTOMATION |HSISpeedUpgradewithtechinstall1.5|../EshopTools/Database_Validation/Database_Scenario.xlsx |1.6 |
  

  #Prathibha script
   @ATC_MACD_1.11
    Scenario Outline: MACD Scenario on H S I Add Jack/Adapter with paperless discount 1.11
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
    Then I select options from technician charges "<add_jack>"
    Then Take a ScreenShot "<scen>"
    And I select Closers and Promos tab
    And I select the checkbox Discount with Paperless
    And I click again on continue button2
    And I click on waive one time charges 
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
    | Environment   | Env | firstName | lastName | phoneNo    |account number| address                                  | Date | Month | Year | SSN       | contactNumber| zip code | Ease_Option |Select_speed                |Wire Maintenance Plan | Port in a phone number? | Need new jacks or wiring? |Installation_option  | Modem_Option |scen           |filelocation1                                            |TCID|
    | Test2         | E2E | Jones     | Smith    | 4029986730 |690087844     | 1693 GARFIELD AVE, DUBUQUE, IA,52001,USA | 02   |    02 | 1987 | 666601283 | 6666012834   |No        | BASIC       |HSI Up to 100 Mbps/10 Mbps  | No                   | No                      | No Work Is Needed ($0/mo) |Tech Install ($99)   | LEASE        |ATC_MACD_1.11  |../EshopTools/Database_Validation/Database_Scenario.xlsx |1.6 |
   
   
   #Sachin script
 @CToE_REQ_1.12
    Scenario Outline: MACD Scenario on add jack on Grandfathered speed 1.12
  
	  Given I should be on Eshop login screen
    When I enter username and password
    And I enter the "<firstName>" "<lastName>" "<phoneNo>" in ESHOP customer information screen
    Then I click on Account or Order already exists
    And I enter only the completed account "<completed_accountnum>"
    Then I click let's go button
    Then I should be in existing products page
    Then I click on Make changes button
    Then I should be in Product offer page
    And I click on continue button
    Then I should be in customize service page
    Then I select options from technician charges "<add_jack>"
    Then Take a ScreenShot "<scen>"
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
    | Environment  | Env | firstName | lastName | phoneNo    | completed_accountnum |scen           |filelocation1                                            |TCID|
    | Test2        | E2E | THOMAS    | HILLA    | 4043564343 | 690103414            |CToE_REQ_1.12  |../EshopTools/Database_Validation/Database_Scenario.xlsx |1.6 |
   