@EshopTestScripts @MACDScripts @MACD_Change
Feature: Regression scenerios on HSI customers

#Raji Script
   @HSINONGPON13.1
  Scenario Outline: Create a HSI new install Order-Non GPON 13.1
    #Given I should be on SFC login screen
    #When I enter username and password
    #Then I click on create new account
    #Then I enter the "<firstName>" "<lastName>" "<phoneNo>" and "<address>" in new acquisition page
    #Then I validate the address and save it
    #Then I click on order eshop button
    #Then I should be in Eshop Product offer page
    
    Given I should be on Eshop login screen
    When I enter username and password
    And I enter the "<Env>" "<firstName>" "<lastName>" "<phoneNo>" and "<address>" in customer detail page
    Then I click let's go button
    Then I select HSI postpaid
    Then Take a ScreenShot "<scen>"
    Then I select the Available speed "<Select_speed>"
    And I select Your "<Modem_Option>" Modem option
    And I select "<Ease_Option>" Ease Option
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
    Then I clicked submit order button
    Then I get account number from application
    Then Take a ScreenShot "<scen>"
    Then I validate Databases for statas and update file"<filelocation1>" "<TCID>" "<scen>"
    #Then I get order number from application and provision it in Env "<Environment>" 
     Then Take a ScreenShot "<scen>"

    Examples: 
    | Environment   | firstName | lastName | phoneNo    | address                               | Modem_Option          | Ease_Option    | email       | SMSNo      | Date | Month | Year | SSN       | card             | zip code | Select_speed             |scen           |filelocation1                                            |TCID|
    | Test2         | Thomas    | Hilla    | 4899999343 | 3066 SHADY LN,LITTLETON,CO 80126, USA | Leased Modem ($15/mo) | Basic ($0/mo)  | Ctl@Ctl.com | 4029986730 |   02 |    02 | 1987 | 666446831 | 4485389438108352 |    37638 |HSI Up to 80 Mbps/10 Mbps |HSINONGPON13.1 |../EshopTools/Database_Validation/Database_Scenario.xlsx |1.6 | 


 #Priyansh Script for GPON HSI new install
   @GPON_HSI13.2
    Scenario Outline: HSI Order GPON 13.2
	
	  Given I should be on Eshop login screen
    When I enter username and password
    Then I enter the "<Env>" "<firstName>" "<lastName>" "<phoneNo>" and "<address>" in customer detail page
    Then I click let's go button
    Then I should be in Product offer page
    Then I change account to postpaid
    
    Then I select the Available speed "<Select_speed>"
    Then Take a ScreenShot "<scen>"
    Then I select the number of device needed "<Device Quantity>"
    
    Then I select "<Ease_Option>" Ease Option
    And I select Your "<Modem_Option>" Modem option
    When I click on continue button
    Then I should be in customize service page 
    
    Then I click again on contine button
    Then I should get earliest available appointment text
    And I click to reserve appointment
    Then I click on continue button of scheduling page
    And I decline customer email
    And I enter date "<Date>" month "<Month>" and year "<Year>" of birth
    And I enter SSN number "<SSN>"
    And I select credit as "BypassCreditCheck"
    And I click on account Continue button
    
     And I click again click Continue button on account
    And I selected Yes for the review in order summary page
    
    Then I clicked submit order button
    Then Take a ScreenShot "<scen>"
    Then I get account number from application
    Then I validate Databases for statas and update file"<filelocation1>" "<TCID>" "<scen>"
    #Then I get order number from application and provision it in Env "<Environment>" 
     Then Take a ScreenShot "<scen>"
     
      Examples: 
     | Environment  | Env | firstName | lastName | phoneNo    | address                               | Select_speed                | Installation_option |Ease_Option    | Modem_Option           |Date | Month | Year | SSN        | Device Quantity  |scen           |filelocation1											                     |TCID| 
     | Test2        | E2E | Thomas    | Hilla    | 4029986730 | 12304 GREY FAWN DR,OMAHA,NE,68154     | HSI Up to 940 Mbps/940 Mbps |  Tech Install ($99) | Basic ($0/mo) |  Leased Modem ($15/mo) | 02  |    02 | 1987 | 3450380580 | 1 device         |GPON_HSI13.2   |../EshopTools/Database_Validation/Database_Scenario.xlsx|1.6 |
   
#Prathibha script
      @HSI13.3

  Scenario Outline: Create a HSI new install Order 13.3
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
    Then I should be in Eshop Product offer page
    Then I select HSI postpaid
    Then Take a ScreenShot "<scen>"
    Then I select the Available speed "<Select_speed>"
    Then I select the best "<Installation_option>" installation option
    And I select "<Ease_Option>" Ease Option
    And I click on continue button
    Then I should be in customize service page
    And I click again on contine button
    And I click to reserve appointment
    And I click on continue button of scheduling page
    Given I decline customer email 
    And I enter date "<Date>" month "<Month>" and year "<Year>" of birth
    And I enter SSN number "<SSN>"
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
    | Environment   | Env | firstName | lastName | phoneNo    | address                                  | Date | Month | Year | SSN       | zip code | Ease_Option   | Installation_option  | Need new jacks or wiring? |Select_speed             |scen           |filelocation1                                            |TCID|
    | Test2         | E2E | Jones     | Smith    | 4029986730 | 1693 GARFIELD AVE, DUBUQUE, IA,52001,USA | 02   |    02 | 1987 | 666601283 | No       | Basic ($0/mo) | Tech Install ($99)   | No Work Is Needed ($0)    |HSI Up to 60 Mbps/5 Mbps |HSI13.3        |../EshopTools/Database_Validation/Database_Scenario.xlsx |1.6 |
 
 #Prathibha Scipt
@New_HSI_Voice_13.4
    Scenario Outline: Create a PFL Internet HSI and voice Order for a User GPON 13.4
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
    Then I should be in Product offer page
    Then I select HSI postpaid
    Then I select HomePhone
    Then Take a ScreenShot "<scen>"
    Then I select the best "<Installation_option>" installation option
    And I select "<Ease_Option>" Ease Option
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
    | Environment   | Env | firstName | lastName | phoneNo    | address                                  | Date | Month | Year | SSN       | zip code | Ease_Option  | Voice Mail      | Wire Maintenance Plan | Port in a phone number? | Need new jacks or wiring? |  Installation_option  |scen               |filelocation1                                            |TCID|
    | Test2         | E2E | Jones     | Smith    | 4029986730 | 1693 GARFIELD AVE, DUBUQUE, IA,52001,USA | 02   |    02 | 1987 | 666601283 | No       | Basic ($0/mo)| Yes ($0.00/mo)  | Yes ($11.00/mo)       | No                      | No Work Is Needed ($0/mo) | Tech Install ($99)    |New_HSI_Voice_13.4 |../EshopTools/Database_Validation/Database_Scenario.xlsx |1.6 |
   
 
#Prathibha Script
  @New_HSI_Voice_13.5
  Scenario Outline: Create a HSI top tier internet and voice Order for a User GPON 13.5
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
    Then I should be in Product offer page
    Then I change account to postpaid
    Then I select HomePhone
    Then Take a ScreenShot "<scen>"
    Then I select required option for voice mail "<Voice Mail>"
    Then I select required option for Wire Maintenance Plan "<Wire Maintenance Plan>"
    Then I select required option for Port in a phone number? "<Port in a phone number?>"
    Then I select required option for Need new jacks or wiring? "<Need new jacks or wiring?>"
    And I select "<Ease_Option>" Ease Option
    And I click on continue button
    Then I should be in customize service page
    Then I click again on contine button
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
    Then Take a ScreenShot "<scen>"
    Then I validate Databases for statas and update file"<filelocation1>" "<TCID>" "<scen>"
     #Then I get order number from application and provision it in Env "<Environment>" 
     Then Take a ScreenShot "<scen>"
    
    
    Examples: 
    | Environment   | Env | firstName | lastName | phoneNo    | address                           | Date | Month | Year | SSN       | zip code | Ease_Option    | Voice Mail      | Wire Maintenance Plan | Port in a phone number? | Need new jacks or wiring? |scen               |filelocation1                                            |TCID|
    | Test2         | E2E | Jones     | Smith    | 4029986730 | 12304 GREY FAWN DR,OMAHA,NE,68154 | 02   |    02 | 1987 | 666601283 | No       | Basic ($0/mo)  | Yes ($0.00/mo)  | Yes ($11.00/mo)       | No                      | No Work Is Needed ($0/mo) |New_HSI_Voice_13.5 |../EshopTools/Database_Validation/Database_Scenario.xlsx |1.6 |
 

#Swati
   @1PtyserviceNoPay13.6
   Scenario Outline: Create a Order with Pty voice service 13.6
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
    Then I select One Pty Residence Line
    Then Take a ScreenShot "<scen>"
    Then I select required option for voice mail "<Voice Mail>"
    Then I select required option for Wire Maintenance Plan "<Wire Maintenance Plan>"
    Then I select required option for Port in a phone number? "<Port in a phone number?>"
    Then I select required option for Need new jacks or wiring? "<Need new jacks or wiring?>"
    And I click on continue button
    Then I should be in customize service page
    And I click again on contine button
    And I click on continue button of scheduling page
    And I enter "<email>" and "<SMSNo>"
    And I enter date "<Date>" month "<Month>" and year "<Year>" of birth
    And I enter SSN number "<SSN>"
    And I select credit as "BypassCreditCheck"
    Then Take a ScreenShot "<scen>"
    And I click on account Continue button
    And I click again click Continue button on account
    And I selected Yes for the review in order summary page
    Then I enter the special remark in Additional Order Remarks field "<Additional Order Remarks>"
    Then I clicked submit order button
    Then I get account number from application
    Then I validate Databases for statas and update file"<filelocation1>" "<TCID>" "<scen>"
    #Then I get order number from application and provision it in Env "<Environment>" 
    Then Take a ScreenShot "<scen>"
    

    Examples: 
    | Environment   | firstName | lastName | phoneNo    | address                             | email       | SMSNo      | Date | Month | Year | SSN       | card             | zip code | Voice Mail | Wire Maintenance Plan | Port in a phone number? | Need new jacks or wiring? | Additional Order Remarks       |scen                 |filelocation1                                            |TCID|
    | Test2         | Service   | PTY      | 6746489578 | 3066 SHADY LN, LITTLETON, CO, 80126 | Ctl@Ctl.com | 4029986730 |   02 |    02 | 1987 | 666150907 | 4485389438108352 |    37638 | No         | No                    | No                      | No Work Is Needed ($0/mo) | ESHOP ORDER TEST BY AUTOMATION |1PtyserviceNoPay13.6 |../EshopTools/Database_Validation/Database_Scenario.xlsx |1.6 |
   


#Prathibha cript
   @ATC_MACD_13.7
   Scenario Outline: MACD Scenario on Voice Move to Native 13.7
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
     | Environment  | Env | firstName | lastName | phoneNo    | new_address                           | account number | Installation_option | Device Quantity |scen           |filelocation1                                            |TCID|
     | Test2        | E2E | Jones     | Smith    | 4029986730 | 611 FENWICK DR,PAPILLION,NE 68046,USA |     690102219  |  Tech Install ($99) | 1 devices       |ATC_MACD_13.7  |../EshopTools/Database_Validation/Database_Scenario.xlsx |1.6 |
   


#Prathibha script
   @ATC_MACD_13.8
    Scenario Outline: MACD Scenario on Voice Move to NonNative 13.8
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
    | Environment  | Env | firstName | lastName | phoneNo    | new_address                           | account number | Installation_option | Device Quantity | removal_reason |scen           |filelocation1                                            |TCID|
    | Test2        | E2E | Jones     | Smith    | 4029986730 | 611 FENWICK DR,PAPILLION,NE 68046,USA |     690102219  |  Tech Install ($99) | 2 devices       | MOVED          |ATC_MACD_13.8 |../EshopTools/Database_Validation/Database_Scenario.xlsx |1.6 |
   
   #Sachin script
   @HSICvoipwithpay13.9
    Scenario Outline: Create New Install postpaid HSI and DHP order with deposit by credit card 13.9
    Given I should be on Eshop login screen
    When I enter username and password
    And I enter the "<Env>" "<firstName>" "<lastName>" "<phoneNo>" and "<address>" in customer detail page
    Then I click let's go button
    Then I should be in Product offer page
    Then I select HSI postpaid
    And I select CVoip DHP phone
    And I select address info popup
    Then Take a ScreenShot "<scen>"
    Then I select "<Ease_Option>" Ease Option
    And I click on continue button
    Then I should be in customize service page
    And I click again on contine button
    And I click to reserve appointment
    And I click on continue button of scheduling page
    And I decline customer email
    And I enter date "<Date>" month "<Month>" and year "<Year>" of birth
    And I enter SSN number "<SSN>"
    And I select credit as "Yes"
    And I click on account Continue button
    And I click on payNow
    And I should be at make payment page
    And I fill all card details for deposit as "<card>" and "<zip code>"
    And  I click submit button on verify InformationPage
    Then Take a ScreenShot "<scen>"
    And I click again click Continue button on account    
    And I selected Yes for the review in order summary page
    Then I clicked submit order button
    Then I get account number from application
    Then Take a ScreenShot "<scen>"
    Then I validate Databases for statas and update file"<filelocation1>" "<TCID>" "<scen>"
     #Then I get order number from application and provision it in Env "<Environment>" 
     Then Take a ScreenShot "<scen>"
    
      
      Examples: 
     | Environment  | Env | firstName | lastName | phoneNo    | address                             | email         | sms         | zip code | card             | Date | Month | Year | Ease_Option      | SSN        |scen                |filelocation1                                            |TCID|
     | Test2        | E2E | THOMAS    | HILLA    | 4043564343 | 3066 SHADY LN, LITTLETON, CO, 80126 | abc@gmail.com | 4043564343  | 37638    | 4485389438108352 | 03   | 03    | 1990 | Basic ($0/mo)    | 3450380580 |HSICvoipwithpay13.9 |../EshopTools/Database_Validation/Database_Scenario.xlsx |1.6 |
  
  #sachin script
  @PREPAIDHSICVOIP13.10
   Scenario Outline: Create New Install prepaid HSI and DHP order with payment by credit card 13.10
    Given I should be on Eshop login screen
    When I enter username and password
    And I enter the "<Env>" "<firstName>" "<lastName>" "<phoneNo>" and "<addresses>" in customer detail page
    Then I click let's go button
    Then I should be in Product offer page
    And I select CVoip DHP phone
    And I select address info popup
    Then Take a ScreenShot "<scen>"
    And I click on continue button
    Then I should be in customize service page
    And I click again on contine button
    And I click to reserve appointment
    And I click on continue button of scheduling page
    Then I enter "<email>" and "<sms>"
    And I enter date "<Date>" month "<Month>" and year "<Year>" of birth
    And I click on account Continue button
    And I click on payNow
    And I should be at make payment page
    And I fill all card details as "<firstName>" and "<card>" and "<zip code>"
    And I click again click Continue button on account  
    Then Take a ScreenShot "<scen>"
    And I selected Yes for the review in order summary page
    Then I clicked submit order button
    Then I get account number from application
    Then Take a ScreenShot "<scen>"
    Then I validate Databases for statas and update file"<filelocation1>" "<TCID>" "<scen>"
     #Then I get order number from application and provision it in Env "<Environment>" 
     Then Take a ScreenShot "<scen>"
    
      
      Examples: 
    | Environment   | Env | firstName | lastName | phoneNo    | addresses                           | email         | sms         | zip code | card             | Date | Month | Year |scen                 |filelocation1                                            |TCID|
    | Test2         | E2E | THOMAS    | HILLA    | 4043564343 | 3066 SHADY LN, LITTLETON, CO, 80126 | abc@gmail.com | 4043564343  | 37638    | 4485389438108352 | 03   | 03    | 1990 |PREPAIDHSICVOIP13.10 |../EshopTools/Database_Validation/Database_Scenario.xlsx |1.6 |
  
  
   
#Swati
   @POTSOnlyNoPay13.11
   Scenario Outline: Create a POTS Only Order 13.11
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
    And I click on continue button of scheduling page
    And I enter "<email>" and "<SMSNo>"
    And I enter date "<Date>" month "<Month>" and year "<Year>" of birth
    And I enter SSN number "<SSN>"
    And I select credit as "BypassCreditCheck"
    Then Take a ScreenShot "<scen>"
    And I click on account Continue button
    And I click again click Continue button on account
    And I selected Yes for the review in order summary page
    Then I enter the special remark in Additional Order Remarks field "<Additional Order Remarks>"
    Then I clicked submit order button
    Then I get account number from application
    Then I validate Databases for statas and update file"<filelocation1>" "<TCID>" "<scen>"
    #Then I get order number from application and provision it in Env "<Environment>" 
     Then Take a ScreenShot "<scen>"
    

    Examples: 
    | Environment   | firstName | lastName | phoneNo    | address                               | email       | SMSNo      | Date | Month | Year | SSN       | card             | zip code | Voice Mail | Wire Maintenance Plan | Port in a phone number? | Need new jacks or wiring?    | Additional Order Remarks       |scen               |filelocation1                                            |TCID|
    | Test2         | Tell      | Me       | 6746489888 | 3066 SHADY LN, LITTLETON, CO, 80126   | Ctl@Ctl.com | 4029986730 |   02 |    02 | 1987 | 666150907 | 4485389438108352 |    37638 | No         | No                    | No                      | No Work Is Needed ($0/mo)    | ESHOP ORDER TEST BY AUTOMATION |POTSOnlyNoPay13.11 |../EshopTools/Database_Validation/Database_Scenario.xlsx |1.6 |
   
   

#Sachin script
 @CToE_REQ_13.12
     Scenario Outline: MACD Scenario on change of speed with self install 13.12
	   Given I should be on Eshop login screen
     When I enter username and password
     And I enter the "<firstName>" "<lastName>" "<phoneNo>" in ESHOP customer information screen
     Then I click on Account or Order already exists
     And I enter only the completed account "<completed_accountnum>"
     Then I click let's go button
     Then I should be in existing products page
     Then I click on Make changes button
     Then I should be in Product offer page
     Then I choose last speed option
     Then I select the best "<Installation_option>" installation option
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
   | Environment   | Env | firstName | lastName | phoneNo    | Installation_option | completed_accountnum |scen           |filelocation1                                            |TCID|
   | Test2         | E2E | THOMAS    | HILLA    | 4043564343 | Self Install ($0/mo)| 690087888            |CToE_REQ_13.12 |../EshopTools/Database_Validation/Database_Scenario.xlsx |1.6 |     
      
      
      
     #Sachin script
       @CToE_REQ_13.13
    Scenario Outline: MACD Scenario on pots account change tech install 13.13
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
   | Environment   | Env | firstName | lastName | phoneNo    | Selectspeed                 | Installation_option | completed_accountnum |scen           |filelocation1                                            |TCID|
   | Test2         | E2E | THOMAS    | HILLA    | 4043564343 | HSI Up to 100 Mbps/10 Mbps  | Tech Install ($99)  | 690103312            |CToE_REQ_13.13 |../EshopTools/Database_Validation/Database_Scenario.xlsx |1.6 |
  

 #Prathibha script
   @ATC_MACD_13.14
     Scenario Outline: MACD Scenario on H S I + DTV during  Change the Install Option to Self Install 13.14
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
   When I enter only the completed account "<ExistAccount>"
   Then I click let's go button
   Then I should be in existing products page
   Then I click on Make changes button
   Then I select DTV
   Then Take a ScreenShot "<scen>"
   Then I choose last speed option
   Then I select the best "<Installation_option>" installation option
   And I select Your "<Modem_Option>" Modem option
   And I select "<Ease_Option>" Ease Option
   When I click on continue button
   Then I should be in customize service page
   Then I click again on contine button
   Then I click on continue button of scheduling page 
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
    | Environment   | Env | firstName | lastName | phoneNo    | ExistAccount   | Choice  |     Ease_Option     |Select_speed               |Installation_option  | Modem_Option            |scen           |filelocation1                                            |TCID|
    | Test2         | E2E | Thomas    | Hilla    | 4029986730 | 690105427      | No      |     Basic ($0/mo)   |HSI Up to 100 Mbps/10 Mbps |Self Install ($0/mo) | Purchased Modem ($200)  |ATC_MACD_13.14 |../EshopTools/Database_Validation/Database_Scenario.xlsx |1.6 |
   
  