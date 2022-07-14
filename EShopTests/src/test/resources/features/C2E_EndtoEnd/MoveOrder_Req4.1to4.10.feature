@EshopTestScripts @MACDScripts @MACD_Change
Feature: MACD Scenarios on move orders for Migrated HSI Postpaid accounts 

 #Prathibha script
    @ATC_MACD_4.1
    Scenario Outline: MACD Scenario on H S I Move to Native 4.1
    #Given I should be on SFC login screen
    #When I enter username and password
    #Below two commented steps are Future Ready steps for MACD Scenarios
    #Then I move back to existing SFC page
    #Then I search order in SFC page with account number
    #Then I search order in SFC page with account number "<account number>"
    #Then I click on order eshop button in SFC page to proceed to Eshop Page
    #Then I should be in existing products page
    Given I should be on Eshop login screen
    When I enter username and password
    And I enter the "<firstName>" "<lastName>" "<phoneNo>" in ESHOP customer information screen
    Then I click on Account or Order already exists
    When I enter only the completed account "<account number>"
    Then I click let's go button
    Then I should be in existing products page
    Then I select move service from other order activities
    And I enter new address and click validate "<new_address>"
    Then Take a ScreenShot "<scen>"
    Then I select the best "<Installation_option>" installation option for move
    Then I select the number of device needed for move "<Device Quantity>"
    And I click continue button from existing products and move service page
    And I click again continue button in Customer Service Page
    And I click to reserve appointment
    And I click continue button in scheduling Move Order page
    Then I select No, mail my bill option
    And I click Continue button on account information page
    And I selected Yes for the review in order summary page
    Then I clicked submit order button
    Then I should able to submit order successfully
    Then I get account number from application
    Then Take a ScreenShot "<scen>"
    Then I validate Databases for statas and update file"<filelocation1>" "<TCID>" "<scen>"
    #Then I get order number from application and provision it in Env "<Environment>" 
     Then Take a ScreenShot "<scen>"
     
   Examples: 
   | Environment   | Env | firstName | lastName | phoneNo    | new_address                           | account number | Installation_option | Device Quantity | removal_reason |scen           |filelocation1                                            |TCID|
   | Test2         | E2E | Jones     | Smith    | 4029986730 | 611 FENWICK DR,PAPILLION,NE 68046,USA |     690105427  |  Tech Install ($99) | 2 devices       | MOVED          |ATC_MACD_4.1   |../EshopTools/Database_Validation/Database_Scenario.xlsx |1.6 |
   

 #Swati script
  @MACD_move_hsi4.2
  Scenario Outline: Migrated HSI customer move to non-native 4.2
  
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
    Then I select move service from other order activities
    And I enter new address and click validate "<new_address>"
    Then Take a ScreenShot "<scen>"
    Then I select the best "<Installation_option>" installation option for move
    Then I select the number of device needed for move "<Device Quantity>"
    And I click continue button from existing products and move service page
    And I click again continue button in Customer Service Page
    And I click to reserve appointment
    And I click continue button in scheduling Move Order page
    Then Take a ScreenShot "<scen>"
    Then I click Continue button on account information page
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
    | Environment  | Env | firstName | lastName | phoneNo    | new_address                              | account number | Installation_option | Device Quantity | Additional Order Remarks       |scen             | filelocation1											                      |TCID|
    | Test2        | E2E | POST      | RED      | 4029589898 | 6737 SW 60TH AVE, PORTLAND,OR 97219, USA |      690084432 | Tech Install ($99)  | 1 device        | ESHOP ORDER TEST BY AUTOMATION |MACD_move_hsi4.2 |../EshopTools/Database_Validation/Database_Scenario.xlsx|1.6|


 #Swati sript
  @MACD_moveaddPOTSwithduedate4.3
  Scenario Outline: Migrated HSI customer during Change move and add POTS with user due date selection 4.3
  
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
    Then I select move service from other order activities
    And I enter new address and click validate "<new_address>"
    Then I Add the new products POTS
    Then Take a ScreenShot "<scen>"
    Then I select the best "<Installation_option>" installation option for move
    Then I select the number of device needed for move "<Device Quantity>"
    Then I select required option for voice mail "<Voice Mail>"
     Then I select required option for Wire Maintenance Plan "<Wire Maintenance Plan>"
    Then I select required option for Port in a phone number? "<Port in a phone number?>"
    Then I select required option for Need new jacks or wiring? "<Need new jacks or wiring?>"
    And I click continue button from existing products and move service page
    And I click again continue button in Customer Service Page
    And I click on Duedate calender to change DD1
    Then Take a ScreenShot "<scen>"
    And I click continue button in scheduling Move Order page
    Then I click Continue button on account information page
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
    | Environment  | Env | firstName | lastName | phoneNo    | new_address                           | account number | Installation_option | Device Quantity  | Voice Mail | Wire Maintenance Plan |Port in a phone number? | Need new jacks or wiring? | Due Date  | Additional Order Remarks       |scen                           |filelocation1											                       |TCID| 
    | Test2        | E2E | POST      | RED      | 4029589898 | 611 FENWICK DR,PAPILLION,NE 68046,USA |      690084432 | Tech Install ($99)  | 1 device         |No          | No                    | No                     | No Work Is Needed ($0/mo) |  Sep15   | ESHOP ORDER TEST BY AUTOMATION |MACD_moveaddPOTSwithduedate4.3 |../EshopTools/Database_Validation/Database_Scenario.xlsx |1.6 |
    
    
    #Raji Script
  @HSI_MOVE_ADD_CVOIP_TECHRMRKS4.4
  Scenario Outline: HSI  during  MV add CVOIP and add tech remarks 4.4
    #Given I should be on SFC login screen
    #When I enter username and password
    #Below two commented steps are Future Ready steps for MACD Scenarios
    #Then I move back to existing SFC page
    #Then I search order in SFC page with account number
    #Then I search order in SFC page with account number "<account number>"
    
    Given I should be on Eshop login screen
    When I enter username and password
    And I enter the "<firstName>" "<lastName>" "<phoneNo>" in ESHOP customer information screen
    Then I click on Account or Order already exists
    When I enter only the completed account "<account number>"
    Then I click let's go button
    Then I should be in existing products page
    Then I select move service from other order activities
    And I enter new address and click validate "<new_address>"
    And I select CVoip DHP phone
    Then Take a ScreenShot "<scen>"
    And I select address info popup
		And I click continue button from existing products and move service page
    Then I should be in customize service page
    And I click again on contine button
    And I click to reserve appointment
    And I enter Driving Directions "<Driving_Comments>"comments
    And I enter Additional "<Additional_Comments>" comments
    Then Take a ScreenShot "<scen>"
    And I click continue button in scheduling Move Order page
    Then I select No, mail my bill option
    And I click Continue button on account information page
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
     | Environment | Env | firstName | lastName | phoneNo    | new_address                          			 | account number | Additional Order Remarks      | Driving_Comments       | Additional_Comments       |scen                            |filelocation1                                            |TCID|
     | Test2       | E2E | ELIZ      | THO      | 4029986730 | 6737 SW 60TH AVE, PORTLAND,OR 97219, USA    |      690079128 |ESHOP ORDER TEST BY AUTOMATION | Driving comments added | Additional comments added |HSI_MOVE_ADD_CVOIP_TECHRMRKS4.4 |../EshopTools/Database_Validation/Database_Scenario.xlsx |1.6 |
  
  
  #Priyansh script
  @addPOTsExistHsiEQ4.5
   Scenario Outline: For a migrated HSI customer Move the service and add POTS and all equip at customize page 4.5
	Given I should be on Eshop login screen
   When I enter username and password
    And I enter the "<firstName>" "<lastName>" "<phoneNo>" in ESHOP customer information screen
   Then I click on Account or Order already exists
    When I enter only the completed account "<ExistAccount>"
   Then I click let's go button
   Then I should be in existing products page
    Then I select move service from other order activities
    And I enter new address and click validate "<new_address>"
   Then I should be in Product offer page
    
    And I select HomePhone
    Then Take a ScreenShot "<scen>"
    Then I select "<Ease_Option>" Ease Option
   Then I select required option for voice mail "<Voice Mail>"
    
    Then I select required option for Wire Maintenance Plan "<Wire Maintenance Plan>"
    Then I select required option for Port in a phone number? "<Port in a phone number?>"
    Then I select required option for Need new jacks or wiring? "<Need new jacks or wiring?>"
    
    When I click on continue button
    Then I should be in customize service page
    
    Then I click all equip
    
    Then I click again on contine button
     Then I should get earliest available appointment text  
    And I click to reserve appointment
    Then I click on continue button of scheduling page
    And I validate if Update or Review Billing address is present for Vacation Suspend order in Account Information page
    And I select current billing address
    Then I click continue on credit review page
    
    And I selected Yes for the review in order summary page
   
    Then I clicked submit order button
    Then I get account number from application
    Then Take a ScreenShot "<scen>"
    Then I validate Databases for statas and update file"<filelocation1>" "<TCID>" "<scen>"
    #Then I get order number from application and provision it in Env "<Environment>" 
     Then Take a ScreenShot "<scen>"
    
    
 Examples: 
     | Environment | Env | firstName | lastName | phoneNo    |ExistAccount | new_address                           | Select_speed              | Installation_option |Ease_Option   |Date  | Month | Year | SSN        | Device Quantity | Voice Mail | Wire Maintenance Plan | Port in a phone number? | Need new jacks or wiring?     |scen                 |filelocation1                                            |TCID|
     | Test2       | E2E | Thomas    | Hilla    | 4029986730 | 690079128   | 611 FENWICK DR,PAPILLION,NE 68046,USA | HSI Up to 80 Mbps/10 Mbps | Tech Install ($99)  | Basic ($0/mo)|  02  |    02 | 1987 | 3450380580 | 1 device       | No          | No                    | No                      | No Work Is Needed ($0/mo)     |addPOTsExistHsiEQ4.5 |../EshopTools/Database_Validation/Database_Scenario.xlsx |1.6 |
      
 
  #Sachin script
   @CToE_REQ_4.6
    Scenario Outline: MACD Scenario to add COVIP/DHP during move and Order summary final recap notes 4.6
	  Given I should be on Eshop login screen
    When I enter username and password
    And I enter the "<firstName>" "<lastName>" "<phoneNo>" in ESHOP customer information screen
    Then I click on Account or Order already exists 
    And I enter only the completed account "<completed_accountnum>"
    Then I click let's go button
    Then I should be in existing products page
    Then I select move service from other order activities
    Then I enter new address and click validate "<new_address>"
    Then Take a ScreenShot "<scen>"
    And I select CVoip DHP phone
    And I select address info popup
    Then I select the best "<Installation_option>" installation option for move
    Then Take a ScreenShot "<scen>"
    And I click continue button from existing products and move service page
    And I click again continue button in Customer Service Page
    And I click to reserve appointment
    And I click continue button in scheduling Move Order page
    Then I select No, mail my bill option
    And I click Continue button on account information page
    And I selected Yes for the review in order summary page
    Then I clicked submit order button
    Then I get account number from application
    Then Take a ScreenShot "<scen>"
    Then I validate address with "<new_address>"
    Then I validate Databases for statas and update file"<filelocation1>" "<TCID>" "<scen>"
    #Then I get order number from application and provision it in Env "<Environment>" 
     Then Take a ScreenShot "<scen>"

      Examples: 
    | Environment   | Env | firstName | lastName | phoneNo    | new_address                                | Installation_option |  completed_accountnum |scen           |filelocation1                                            |TCID|
    | Test2         | E2E | THOMAS    | HILLA    | 4043564343 | 1693 GARFIELD AVE, DUBUQUE, IA, 52001, USA | Tech Install ($99)  |  690105427            |CToE_REQ_4.6  |../EshopTools/Database_Validation/Database_Scenario.xlsx |1.6 |
      
      #priyansh script
    @NonGponToGpon4.7
	Scenario Outline: Change existing Non-Gpon Acc to Gpon 4.7
	
	  Given I should be on Eshop login screen
    When I enter username and password
    And I enter the "<firstName>" "<lastName>" "<phoneNo>" in ESHOP customer information screen
    Then I click on Account or Order already exists
    When I enter only the completed account "<ExistAccount>"
    Then I click let's go button
    
    Then I should be in existing products page
    Then I click on Make changes button
	
	  Then I select the Available speed on change order "<Select_speed>"
	  Then Take a ScreenShot "<scen>"
    When I click on continue button
    Then I should be in customize service page
     
    Then I click again on contine button
    Then I click on continue button of scheduling page
    
    And I click on continue button on Account Information page for MACD orders
    And I selected Yes for the review in order summary page
    Then I clicked submit order button
    Then I get account number from application
    Then Take a ScreenShot "<scen>"
    Then I validate Databases for statas and update file"<filelocation1>" "<TCID>" "<scen>"
    #Then I get order number from application and provision it in Env "<Environment>" 
     Then Take a ScreenShot "<scen>"
    
      Examples: 
    | Environment   | Env | firstName | lastName | phoneNo    |ExistAccount | address                               | Select_speed                   | scen           |filelocation1                                            |TCID|
    | Test2         | E2E | Thomas    | Hilla    | 4029986730 | 690080676   | 611 FENWICK DR,PAPILLION,NE 68046,USA | HSI Up to 940 Mbps/940 Mbps    |NonGponToGpon4.7 |../EshopTools/Database_Validation/Database_Scenario.xlsx |1.6 |
              
 
 
 #Swati script
    @HSImovewithsamespeedselfinstall4.8
  Scenario Outline: MACD Scenario keep the same speed during move and select the installation option as self install 4.8
   
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
    Then I select move service from other order activities
    And I enter new address and click validate "<new_address>"
    Then Take a ScreenShot "<scen>"
    Then I select the best "<Installation_option>" installation option for move
    And I click continue button from existing products and move service page
    And I click again continue button in Customer Service Page
    And I click to reserve appointment
    Then Take a ScreenShot "<scen>"
    And I click continue button in scheduling Move Order page
    Then I click Continue button on account information page
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
   | Environment   | Env | firstName | lastName | phoneNo    | new_address                              | account number | Modem_Option                 |  Ease_Option       |Installation_option    | Additional Order Remarks        | scen                              |filelocation1                                            |TCID|
   | Test2         | E2E | CAT       | MAT      | 4029944348 | 6737 SW 60TH AVE, PORTLAND,OR 97219, USA |  690084432     | Leased Modem ($10/mo)        | Basic ($0/mo)      |  Tech Install ($99)   |  ESHOP ORDER TEST BY AUTOMATION |HSImovewithsamespeedselfinstall4.8 |../EshopTools/Database_Validation/Database_Scenario.xlsx |1.6 |
    
    
   
  
     
    #Sachin Scripts
    #Feature: file for  HSI on grandfathered speed - move to new speed at new address
    @CToE_REQ_4.10
    Scenario Outline: MACD Scenario on move to new speed at new address 4.10
	  Given I should be on Eshop login screen
    When I enter username and password
    And I enter the "<firstName>" "<lastName>" "<phoneNo>" in ESHOP customer information screen
    Then I click on Account or Order already exists
    And I enter only the completed account "<completed_accountnum>"
    Then I click let's go button
    Then I should be in existing products page
    Then I select move service from other order activities
    Then I enter new address and click validate "<new_address>"
    Then Take a ScreenShot "<scen>"
    Then I select the Available speed on change order "<Selectspeed>"
    And I click continue button from existing products and move service page
    And I click again continue button in Customer Service Page
    And I click to reserve appointment
    And I click continue button in scheduling Move Order page
    Then Take a ScreenShot "<scen>"
    And I click Continue button on account information page
    And I selected Yes for the review in order summary page
    Then I clicked submit order button
    Then I get account number from application
    Then Take a ScreenShot "<scen>"
    Then I validate address with "<new_address>"
    Then I validate Databases for statas and update file"<filelocation1>" "<TCID>" "<scen>"
    #Then I get order number from application and provision it in Env "<Environment>" 
     Then Take a ScreenShot "<scen>"
    
 
 Examples: 
    | Environment  | Env | firstName | lastName | phoneNo    | new_address                                | Selectspeed                  | completed_accountnum |scen           |filelocation1                                            |TCID|
    | Test2        | E2E | THOMAS    | HILLA    | 4043564343 | 611 FENWICK DR,PAPILLION,NE 68046,USA      | HSI Up to 100 Mbps/10 Mbps   | 690105427            |CToE_REQ_4.10  |../EshopTools/Database_Validation/Database_Scenario.xlsx |1.6 |
     
   