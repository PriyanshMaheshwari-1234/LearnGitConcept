@EshopTestScripts @MACDScripts @MACD_Change
Feature: Sanity Scenarios for HSI orders

 #Prathibha Script
 @New_Voice_14.1
    
  Scenario Outline: Create a voice Order for a User 14.1
    #Given I should be on SFC login screen
    #When I enter username and password
    #Then I click on create new account
    #Then I enter the "<firstName>" "<lastName>" "<phoneNo>" and "<address>" in new acquisition page
    #Then I validate the address and save it
    #Then I click on order eshop button
    Given I should be on Eshop login screen
    When I enter username and password
    And I enter the "<Env>" "<firstName>" "<lastName>" "<phoneNo>" and "<address>" in customer detail page
    Then I click let's go button
    Then I should be in Eshop Product offer page
    And I select HomePhone only by deselecting Internet
    Then Take a ScreenShot "<scen>"
    Then I select required option for voice mail "<Voice Mail>"
    Then I select required option for Wire Maintenance Plan "<Wire Maintenance Plan>"
    Then I select required option for Port in a phone number? "<Port in a phone number?>"
    Then I select required option for Need new jacks or wiring? "<Need new jacks or wiring?>"
    And I click on continue button
    Then I should be in customize service page
    And I click again on contine button
    And I click to reserve appointment
    And I click on continue button of scheduling page
    Given I decline customer email 
    And I enter date "<Date>" month "<Month>" and year "<Year>" of birth
    Then I enter SSN number "<SSN>"
    And I select credit as "BypassCreditCheck"
    And I click on account Continue button
    And I click again click Continue button on account
    And I selected Yes for the review in order summary page
    Then I clicked submit order button
    Then I should able to submit order successfully
    Then I get account number from application
    Then Take a ScreenShot "<scen>"
    Then I validate Databases for statas and update file"<filelocation1>" "<TCID>" "<scen>"
    #Then I get order number from application and provision it in Env "<Environment>" 
     Then Take a ScreenShot "<scen>"
    
    Examples: 
    | Environment   | Env | firstName | lastName | phoneNo    | address                                  | Date | Month | Year | SSN       | zip code | Ease_Option | Voice Mail      | Wire Maintenance Plan | Port in a phone number? | Need new jacks or wiring? |scen           |filelocation1                                            |TCID|
    | Test2         | E2E | Jones     | Smith    | 4029986730 | 1693 GARFIELD AVE, DUBUQUE, IA,52001,USA | 02   |    02 | 1987 | 666601283 | No       | BASIC       | Yes ($0.00/mo)  | Yes ($11.00/mo)       | No                      | No Work Is Needed ($0/mo) |New_Voice_14.1 |../EshopTools/Database_Validation/Database_Scenario.xlsx |1.6 |
  

#Prathiha script
 @New_HSI_Voice_14.2
    Scenario Outline: Create a HSI and voice Order for a User and place on hold 14.2
    #Given I should be on SFC login screen
    #When I enter username and password
    #Then I click on create new account
    #Then I enter the "<firstName>" "<lastName>" "<phoneNo>" and "<address>" in new acquisition page
    #Then I validate the address and save it
    #Then I click on order eshop button
    Given I should be on Eshop login screen
    When I enter username and password
    And I enter the "<Env>" "<firstName>" "<lastName>" "<phoneNo>" and "<address>" in customer detail page
    Then Take a ScreenShot "<scen>"
    Then I click let's go button
    Then I should be in Product offer page
    Then I select HSI postpaid
    Then I select HomePhone
    Then Take a ScreenShot "<scen>"
    Then I select required option for voice mail "<Voice Mail>"
    Then I select required option for Wire Maintenance Plan "<Wire Maintenance Plan>"
    Then I select required option for Port in a phone number? "<Port in a phone number?>"
    Then I select required option for Need new jacks or wiring? "<Need new jacks or wiring?>"
    And I select "<Ease_Option>" Ease Option
    Then Take a ScreenShot "<scen>"
    And I click on continue button
    Then I should be in customize service page
     And I click again on contine button
    And I click to reserve appointment
    And I click on continue button of scheduling page
    Given I decline customer email 
    And I enter date "<Date>" month "<Month>" and year "<Year>" of birth
    Then I enter SSN number "<SSN>"
    And I select credit as "BypassCreditCheck"
    And I click on account Continue button
    And I click again click Continue button on account
    And I selected Yes for the review in order summary page
    Then I clicked submit order button
    Then I get account number from application
    Then I continue to existing product page
    Then Take a ScreenShot "<scen>"
    Then I click let's go button
    Then I select Place on hold from other actions
    Then I choose On Hold Reason and submit
    Then Take a ScreenShot "<scen>"
   Then I validate Databases for statas and update file"<filelocation1>" "<TCID>" "<scen>"
    
  
    Examples: 
      | Env | firstName | lastName | phoneNo    | address                                  | Date | Month | Year | SSN       | zip code | Ease_Option  | Voice Mail      | Wire Maintenance Plan | Port in a phone number? | Need new jacks or wiring? |scen               |filelocation1                                            |TCID|
      | E2E | Jones     | Smith    | 4029986730 | 1693 GARFIELD AVE, DUBUQUE, IA,52001,USA | 02   |    02 | 1987 | 666601283 | No       | Basic ($0/mo)| Yes ($0.00/mo)  | Yes ($11.00/mo)       | No                      | No Work Is Needed ($0/mo) |New_HSI_Voice_14.2 |../EshopTools/Database_Validation/Database_Scenario.xlsx |1.6 |
      



   #Priyansh Script
 @CancelOrder14.3
 Scenario Outline: Cancel a Pending Order 14.3
   
   Given I should be on Eshop login screen
   When I enter username and password
   And I enter the "<firstName>" "<lastName>" "<phoneNo>" in ESHOP customer information screen
   Then I click on Account or Order already exists
   When I enter only the completed account "<ExistAccount>"
   Then I click let's go button
   Then I click on other actions button on pending order page
   Then I click on cancel order button on pending order page
   Then I confirm the cancelation of the order
   Then Take a ScreenShot "<scen>"
   Then I validate Databases for statas and update file"<filelocation1>" "<TCID>" "<scen>"
   #Then I get order number from application and provision it in Env "<Environment>" 
     Then Take a ScreenShot "<scen>"
 
 Examples:
     | Environment  | Env | firstName | lastName | phoneNo    |ExistAccount |scen            |filelocation1                                            |TCID|
     | Test2        | E2E | Thomas    | Hilla    | 4029986730 | 683250224   |CancelOrder14.3 |../EshopTools/Database_Validation/Database_Scenario.xlsx |1.6 |
      


    #Sachin script
    @CToE_REQ_14.5
    Scenario Outline: MACD Scenario on change filter then change Speed 14.5
	  Given I should be on Eshop login screen
    When I enter username and password
    And I enter the "<firstName>" "<lastName>" "<phoneNo>" in ESHOP customer information screen
    Then I click on Account or Order already exists
    And I enter only the completed account "<completed_accountnum>"
    Then I click let's go button
    Then I should be in existing products page
    Then I click on Make changes button
    Then I should be in Product offer page
    Then i Select Remove filter check option
    Then I select the Available speed on change order "<Selectspeed>"
    Then I select the best "<Installation_option>" installation option
    Then Take a ScreenShot "<scen>"
    And I click on continue button
    Then I should be in customize service page
    Then I click again on contine button
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
     | Environment | Env | firstName | lastName | phoneNo    | Selectspeed                | Installation_option | completed_accountnum |scen           |filelocation1                                            |TCID|
     | Test2       | E2E | THOMAS    | HILLA    | 4043564343 | HSI Up to 100 Mbps/10 Mbps | Tech Install ($99)  | 690105983            |CToE_REQ_14.5  |../EshopTools/Database_Validation/Database_Scenario.xlsx |1.6 |
      
 
 #Priyansh script
	     @BillingandRecords14.6
    Scenario Outline: In existing account change BillingandRecords 14.6
 
   Given I should be on Eshop login screen
   When I enter username and password
   And I enter the "<firstName>" "<lastName>" "<phoneNo>" in ESHOP customer information screen
    Then I click on Account or Order already exists
    When I enter only the completed account "<ExistAccount>"
   Then I click let's go button
   Then I should be in existing products page
   
   Then I select Billing and Response from other order activities
   When I click on continue button
   Then I should be in customize service page
   Then I click again on contine button
   Then Take a ScreenShot "<scen>"
   And I click on continue button on vacation order scheduling page
   
   And I selected Yes for the review in order summary page
   Then I clicked submit order button
   Then I get account number from application
   Then Take a ScreenShot "<scen>"
   Then I validate Databases for statas and update file"<filelocation1>" "<TCID>" "<scen>"
   #Then I get order number from application and provision it in Env "<Environment>" 
     Then Take a ScreenShot "<scen>"
    
   
  Examples: 
    | Environment   | Env | firstName | lastName | phoneNo    |ExistAccount     |scen                  |filelocation1                                            |TCID|
    | Test2         | E2E | Thomas    | Hilla    | 4029986730 |    690111390    |BillingandRecords14.6 |../EshopTools/Database_Validation/Database_Scenario.xlsx |1.6 |
   
   
 
      
      #Sachin script
    @CToE_REQ_14.7
    Scenario Outline: MACD Scenario on change to add Covip 14.7
	  
	  Given I should be on Eshop login screen
    When I enter username and password
    And I enter the "<firstName>" "<lastName>" "<phoneNo>" in ESHOP customer information screen
    Then I click on Account or Order already exists
    And I enter only the completed account "<completed_accountnum>"
    Then I click let's go button
    Then I should be in existing products page
    Then I click on Make changes button
    Then I should be in Product offer page
    And I select CVoip DHP phone 
    And I select address info popup
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
     | Environment  | Env | firstName | lastName | phoneNo    | completed_accountnum |scen           |filelocation1                                            |TCID|
     | Test2        | E2E | THOMAS    | HILLA    | 4043564343 |  690071299           |CToE_REQ_14.7  |../EshopTools/Database_Validation/Database_Scenario.xlsx |1.6 |
  


 #Sachin script
    @CToE_REQ_14.8
    Scenario Outline: MACD Scenario on move to new address 14.8
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
    Then I should be in Product offer page 
    Then I select the best "<Installation_option>" installation option for move
    And I click continue button from existing products and move service page
    And I click again continue button in Customer Service Page
    And I click to reserve appointment
    And I click continue button in scheduling Move Order page
    Then I click Continue button on account information page
    And I selected Yes for the review in order summary page
    Then I clicked submit order button
    Then I get account number from application
    Then Take a ScreenShot "<scen>"
    Then I validate address with "<new_address>"
    Then I validate Databases for statas and update file"<filelocation1>" "<TCID>" "<scen>"
    #Then I get order number from application and provision it in Env "<Environment>" 
     Then Take a ScreenShot "<scen>"
 
    Examples: 
    | Environment  | Env | firstName | lastName | phoneNo    | new_address                                | Installation_option |completed_accountnum |scen           |filelocation1                                            |TCID|
    | Test2        | E2E | THOMAS    | HILLA    | 4043564343 | 6737 SW 60TH AVE, PORTLAND,OR 97219, USA   | Tech Install ($99)  |690105427            |CToE_REQ_14.8  |../EshopTools/Database_Validation/Database_Scenario.xlsx |1.6 |
 
 
  #Priyansh script      
    @ExistHssiAndPPotsRemovePots14.9
    Scenario Outline: For a migrated HSI and POTS customer during Change remove POTS and add a call referal 14.9

	  Given I should be on Eshop login screen
    When I enter username and password
    And I enter the "<firstName>" "<lastName>" "<phoneNo>" in ESHOP customer information screen
    Then I click on Account or Order already exists
    When I enter only the completed account "<ExistAccount>"
    Then I click let's go button
    
    Then I should be in existing products page
    Then I click on Make changes button
   
    Then I should be in Product offer page
    Then I Remove the existing product POTS
    Then Take a ScreenShot "<scen>"
    When I click on continue button
    Then I should be in customize service page
    Then I click again on contine button
    Then I add call referral
    Then Take a ScreenShot "<scen>"   
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
     | Environment  | Env | firstName | lastName | phoneNo    |ExistAccount | scen                            |filelocation1                                            |TCID| 
     | Test2        | E2E | Thomas    | Hilla    | 4029986730 | 690088027   | ExistHssiAndPPotsRemovePots14.9 |../EshopTools/Database_Validation/Database_Scenario.xlsx |1.6 |
      
  
   #swati scripts
   @HSIactiveP4LtoPty14.11
    Scenario Outline: For a migrated customer change the service from P4L to Pty
    #Given I should be on SFC login screen
    #When I enter username and password
    #Below two commented steps are Future Ready steps for MACD Scenarios
    #Then I move back to existing SFC page
    #Then I search order in SFC page with account number
    #Then I search order in SFC page with account number "<account number>"
    #Then I click on order eshop button in SFC page to proceed to Eshop Page
    Given I should be on Eshop login screen
    When I enter username and password
    And I enter the "<Env>" "<firstName>" "<lastName>" "<phoneNo>" and "<address>" in customer detail page
    Then I click let's go button
    Then I should be in existing products page
    Then I click on Make changes button
    Then I Remove the existing product HSI
    Then I select One Pty Residence Line
    Then Take a ScreenShot "<scen>"
    Then I select required option for voice mail "<Voice Mail>"
    Then I select required option for Wire Maintenance Plan "<Wire Maintenance Plan>"
    And I click on continue button
    Then I should be in customize service page
    And I click again on contine button
    And I click on continue button of scheduling page
	  And I click on continue button on Account Information page for MACD orders
    When I selected Yes for the review in order summary page
    Then I enter the special remark in Additional Order Remarks field "<Additional Order Remarks>"
    Then I clicked submit order button
    Then I should able to submit order successfully
    Then I get account number from application
    Then Take a ScreenShot "<scen>"
    Then I validate Databases for statas"<filelocation1>" "<TCID>"
    #Then I get order number from application and provision it in Env "<Environment>"
     Then Take a ScreenShot "<scen>"
        Examples:
    | Environment   | firstName | lastName | phoneNo    | account number | email        | SMSNo       | SSN       | Voice Mail | Wire Maintenance Plan |  Additional Order Remarks     |scen                   |filelocation1                                            |TCID|
    | Test2        | PLN       | PTY      | 6746889578 | 683132470      |  Ctl@Ctl.com |  4029986730 | 666150907 | No         | No                    |ESHOP ORDER TEST BY AUTOMATION |HSIactiveP4LtoPty10.15 |../EshopTools/Database_Validation/Database_Scenario.xlsx |1.6 |

  
   #Swati script
  @HSISelfToTechInstall14.12
  Scenario Outline: MACD Scenario to change installation option from self to tech install 10.16
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
    When I selected Yes for the review in order summary page
    Then I enter the special remark in Additional Order Remarks field "<Additional Order Remarks>"
    Then I clicked submit order button
    Then I should able to submit order successfully
    Then I get account number from application
    Then Take a ScreenShot "<scen>"
    Then I validate Databases for statas"<filelocation1>" "<TCID>"
    #Then I get order number from application and provision it in Env "<Environment>" 
    Then Take a ScreenShot "<scen>"
    
	
	Examples:
      | Env | Environment| firstName | lastName | phoneNo    | account number | Installation_option |scen                      |filelocation1                                            |TCID|
      | E2E | Test2      | Jones     | Smith    | 4029986730 |      690084432 | Tech Install ($99)  |HSISelfToTechInstall10.16 |../EshopTools/Database_Validation/Database_Scenario.xlsx |1.6 |
        
  
   #swati script
  @voicemailtonon-voicemail14.13
Scenario Outline: Migrated HSI customer change the voice mail to non-voice mail 14.13

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
    Then I select required option for voice mail "<Voice Mail>"
    Then Take a ScreenShot "<scen>"
    And I click on continue button
    Then I should be in customize service page
    And I click again on contine button
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
    | Environment   | Env | firstName | lastName | phoneNo    | account number |Voice Mail |Additional Order Remarks        |scen                          |filelocation1                                            |TCID|
    | Test2         | E2E | FIRST     | TIME    | 4029986730  |      690102219 | No        | ESHOP ORDER TEST BY AUTOMATION |voicemailtonon-voicemail14.13 |../EshopTools/Database_Validation/Database_Scenario.xlsx |1.6 |
    
    

 #Swati
  @HSINoPaySelfInstall14.15 
  #select speed that have self install option
  
  Scenario Outline: Create a HSI new install Order with No deposit required 14.15
    
    #Given I should be on SFC login screen
    #When I enter username and password
    #Then I click on create new account
    #Then I enter the "<firstName>" "<lastName>" "<phoneNo>" and "<address>" in new acquisition page
    #Then I validate the address and save it
    #Then I click on order eshop button
    Given I should be on Eshop login screen
    When I enter username and password
    And I enter the "<Env>" "<firstName>" "<lastName>" "<phoneNo>" and "<address>" in customer detail page
    Then I click let's go button
    Then I should be in Eshop Product offer page
    Then I select HSI postpaid
    Then I select the Available speed "<Select_speed>"
    Then I select the best "<Installation_option>" installation option
    And I select Your "<Modem_Option>" Modem option
    And I select "<Ease_Option>" Ease Option
    Then Take a ScreenShot "<scen>"
    And I click on continue button
    Then I should be in customize service page
    And I click again on contine button
    And I click to reserve appointment
    And I click on continue button of scheduling page
    And I enter "<email>" and "<SMSNo>"
    And I enter date "<Date>" month "<Month>" and year "<Year>" of birth
    And I enter SSN number "<SSN>"
    And I select credit as "BypassCreditCheck"
    And I click on account Continue button
    And I click again click Continue button on account
    And I selected Yes for the review in order summary page
    Then I enter the special remark in Additional Order Remarks field "<Additional Order Remarks>"
    Then I clicked submit order button
    Then Take a ScreenShot "<scen>"
    Then I get account number from application
    Then I validate Databases for statas and update file"<filelocation1>" "<TCID>" "<scen>"
    #Then I get order number from application and provision it in Env "<Environment>" 
     Then Take a ScreenShot "<scen>"

    Examples: 
    | Environment  | firstName     | lastName        | phoneNo     |   address                                 | Select_speed                   | Installation_option   | Modem_Option                    |  Ease_Option       | email        | SMSNo      | Date | Month | Year | SSN            | Additional Order Remarks       |scen                     |filelocation1											                      |TCID|									
    | Test2        | THOMAS        | HILLA           | 4043564343  | 3066 SHADY LN , LITTLETON, CO, 80126      |  HSI Up to 30 Mbps/1.5 Mbps    | Tech Install ($99)    | Leased Modem ($15/mo)           | Basic ($0/mo)      | Ctl@Ctl.com  | 4029986730 |   02 |    02 | 1987 | 666446831      | ESHOP ORDER TEST BY AUTOMATION |HSINoPaySelfInstall14.15 |../EshopTools/Database_Validation/Database_Scenario.xlsx |1.6 |
  
  
 