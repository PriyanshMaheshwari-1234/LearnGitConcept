@EshopTestScripts @MACDScripts @MACD_Change
Feature: MACD Scenarios on disconnect orders for Migrated HSI Postpaid accounts

#swati
  @HSIDISCONNECTALL5.1
  Scenario Outline: Verify user is able to submit Disconnect All on HSI orders 5.1
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
    And I click on DisconnectAll
    Then I enter Internet Disconnect Reason
    Then Take a ScreenShot "<scen>"
    And I click again on continue button on DIS Page
    And I click on continue button on Scheduling page of Disconnect Order
    And I select current Billing Address option
    Then Take a ScreenShot "<scen>"
    And I click on continue button on Account Information
    And I selected Yes for the review in order summary page
    Then I enter the special remark in Additional Order Remarks field "<Additional Order Remarks>"
    Then I clicked submit order button
    Then I get account number from application
    Then Take a ScreenShot "<scen>"
    Then I validate Databases for statas and update file"<filelocation1>" "<TCID>" "<scen>"
    #Then I get order number from application and provision it in Env "<Environment>" 
     Then Take a ScreenShot "<scen>"
    
    Examples: 
     | Environment  | Env | firstName | lastName | phoneNo    | account number |Additional Order Remarks        |scen                |filelocation1                                            |TCID|
     | Test2        | E2E | POST      | RED      | 4029589898 |      690084432 | ESHOP ORDER TEST BY AUTOMATION |HSIDISCONNECTALL5.1 |../EshopTools/Database_Validation/Database_Scenario.xlsx |1.6 |
 
 #Priyansh script
      @DisconnectHSIPots5.2
    Scenario Outline: disconnect all orders for HSI + Pots 5.2

	 Given I should be on Eshop login screen
    When I enter username and password
    And I enter the "<firstName>" "<lastName>" "<phoneNo>" in ESHOP customer information screen
    Then I click on Account or Order already exists
    When I enter only the completed account "<ExistAccount>"
    Then I click let's go button
    Then I should be in existing products page
    Then I click on Make changes button
    Then I should be in Product offer page
    Then I select HomePhone
    Then I select required option for voice mail "<Voice Mail>"
    Then I select required option for Wire Maintenance Plan "<Wire Maintenance Plan>"
    Then I select required option for Port in a phone number? "<Port in a phone number?>"
    Then I select required option for Need new jacks or wiring? "<Need new jacks or wiring?>"
    Then Take a ScreenShot "<scen>"
    When I click on continue button
    Then I should be in customize service page
    
    Then I click again on contine button
    Then I click on continue button of scheduling page
    And I click on continue button on Account Information page for MACD orders
    And I selected Yes for the review in order summary page
    Then I enter the special remark in Additional Order Remarks field "<Additional Order Remarks>"
    Then I clicked submit order button
    Then I should able to submit order successfully
    Then I get account number from application
    Then Take a ScreenShot "<scen>"
    Then I validate Databases for statas and update file"<filelocation1>" "<TCID>" "<scen>"
    Then I get order number from application and provision it in Env "<Environment>" 
     Then Take a ScreenShot "<scen>"

    Given I should be on Eshop login screen
    When I enter username and password
   And I enter the "<firstName>" "<lastName>" "<phoneNo>" in ESHOP customer information screen
    Then I click on Account or Order already exists
    When I enter only the completed account "<ExistAccount>"
    Then I click let's go button
    Then I should be in existing products page
    And I click on DisconnectAll
    Then I enter Internet Disconnect Reason
    Then I enter POTS Disconnect Reason
    Then Take a ScreenShot "<scen>"
    
    And I click again on continue button on DIS Page
    And I click on continue button on Scheduling page of Disconnect Order
    And I select current Billing Address option
    Then Take a ScreenShot "<scen>"
    And I click on continue button on Account Information
    And I selected Yes for the review in order summary page
    Then I clicked submit order button
    Then I get account number from application
    Then Take a ScreenShot "<scen>"
    Then I validate Databases for statas and update file"<filelocation1>" "<TCID>" "<scen>"
   #Then I get order number from application and provision it in Env "<Environment>" 
     Then Take a ScreenShot "<scen>"
     
     Examples: 
     | Environment  | Env | firstName | lastName | phoneNo    |ExistAccount |Voice Mail   |  Wire Maintenance Plan  | Port in a phone number? | Need new jacks or wiring?  |scen                 |filelocation1                                            |TCID|
     | Test2        | E2E | Thomas    | Hilla    | 4029986730 | 690088027   |     No      |    No                   | No                      | No Work Is Needed ($0/mo)  |DisconnectHSIPots5.2 |../EshopTools/Database_Validation/Database_Scenario.xlsx |1.6 | 
      
      
 
 
 #Sachin script
  @CToE_REQ_5.4
    Scenario Outline: MACD Scenario on change to add Covip then disconnect all 5.4
	  
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
	
    Then I Click on start new order button
     And I enter the "<firstName>" "<lastName>" "<phoneNo>" in ESHOP customer information screen
    Then I click on Account or Order already exists
    And I enter only the completed account "<completed_accountnum>"
    Then I click let's go button
    Then I should be in existing products page
    And I click on DisconnectAll
    Then I enter Internet Disconnect Reason
    Then Take a ScreenShot "<scen>"
    And I click again on continue button on DIS Page
    And I click on continue button on Scheduling page of Disconnect Order
    And I select No PaperLess billing option 
    And I select current Billing Address option
    Then Take a ScreenShot "<scen>"
    And I click on continue button on Account Information
    And I selected Yes for the review in order summary page
    Then I clicked submit order button
    Then I get account number from application
    Then Take a ScreenShot "<scen>"
    Then I validate Databases for statas and update file"<filelocation1>" "<TCID>" "<scen>"
    #Then I get order number from application and provision it in Env "<Environment>" 
     Then Take a ScreenShot "<scen>"
	
      Examples: 
     | Environment  | Env | firstName | lastName | phoneNo    | completed_accountnum |scen           |filelocation1                                            |TCID|
     | Test2        | E2E | THOMAS    | HILLA    | 4043564343 | 690071299            |CToE_REQ_5.4   |../EshopTools/Database_Validation/Database_Scenario.xlsx |1.6 |
      
      #Priyansh script
   @RemoveHSI5.5
	  Scenario Outline: Remove HSI from HSI+POTS order 5.5
	  Given I should be on Eshop login screen
    When I enter username and password
    And I enter the "<firstName>" "<lastName>" "<phoneNo>" in ESHOP customer information screen
   Then I click on Account or Order already exists
    When I enter only the completed account "<ExistAccount>"
    Then I click let's go button
    
    Then I should be in existing products page
    Then I click on Make changes button

    Then I Remove the existing product HSI
    Then Take a ScreenShot "<scen>"
    And I click on continue button
    Then I should be in customize service page
    Then I click again on contine button
    
    Then I click on continue button of scheduling page
    And I click again click Continue button on change account page
    And I selected Yes for the review in order summary page
    Then I clicked submit order button
    Then I get account number from application
    Then Take a ScreenShot "<scen>"
    Then I validate Databases for statas and update file"<filelocation1>" "<TCID>" "<scen>"
    #Then I get order number from application and provision it in Env "<Environment>" 
     Then Take a ScreenShot "<scen>"
    
     Examples: 
    | Environment   | Env | firstName | lastName | phoneNo    |ExistAccount | scen           |filelocation1                                            |TCID|
    | Test2         | E2E | Thomas    | Hilla    | 4029986730 | 690087822   | RemoveHSI5.5   |../EshopTools/Database_Validation/Database_Scenario.xlsx |1.6 |
      
  #Prathibha script
       @ATC_MACD_5.6
  Scenario Outline: MACD Scenario on HSI + POTS  during CH remove POTS and change the credit check to No 5.6
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
    Then I Remove the existing product POTS
    Then Take a ScreenShot "<scen>"
    Then I check for return deposit amount for removed product if any available
    And I click on continue button
    Then I should be in customize service page
    And I click again on contine button
    Then I add call referral
    Then Take a ScreenShot "<scen>"
    And I click on continue button of scheduling page
    #unable to change credit check to no as it is postpaid connection
    And I click again click Continue button on change account page
    And I selected Yes for the review in order summary page
    Then I clicked submit order button
    Then I should able to submit order successfully
    Then I get account number from application
    Then Take a ScreenShot "<scen>"
    Then I validate Databases for statas and update file"<filelocation1>" "<TCID>" "<scen>"
    #Then I get order number from application and provision it in Env "<Environment>" 
     Then Take a ScreenShot "<scen>"
    
    Examples: 
    | Environment   | Env | firstName | lastName | phoneNo    |account number| address                                  | Date | Month | Year | SSN       | zip code | Ease_Option | Voice Mail | Wire Maintenance Plan | Port in a phone number? | Need new jacks or wiring? |scen           |filelocation1                                            |TCID|
    | Test2         | E2E | Jones     | Smith    | 4029986730 |690088027     | 1693 GARFIELD AVE, DUBUQUE, IA,52001,USA | 02   |    02 | 1987 | 666601283 | No       | BASIC       | No         | No                    | No                      | No Work Is Needed ($0)    |ATC_MACD_5.6 |../EshopTools/Database_Validation/Database_Scenario.xlsx |1.6 |
   
 
 
 #swati
  @RemoveHSIfromHSIPOTS5.8
  Scenario Outline: MACD Scenario on HSI + POTS(Essential Home phone Bundle)  during  CH remove HSI 5.8
    
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
    Then I Remove the existing product HSI
    Then Take a ScreenShot "<scen>"
    And I click on continue button
    Then I should be in customize service page
    And I click again on contine button
    And I click on continue button of scheduling page
    And I click again click Continue button on change account page
    And I selected Yes for the review in order summary page
    Then I enter the special remark in Additional Order Remarks field "<Additional Order Remarks>"
    Then I clicked submit order button
    Then I get account number from application
    Then Take a ScreenShot "<scen>"
    Then I validate Databases for statas and update file"<filelocation1>" "<TCID>" "<scen>"
    #Then I get order number from application and provision it in Env "<Environment>" 
     Then Take a ScreenShot "<scen>"
   
    Examples: 
    | Environment   | Env | firstName | lastName | phoneNo    | account number |Additional Order Remarks       |scen                    |filelocation1                                            |TCID|
    | Test2         | E2E | happy     | time     | 7673938393 |      690102231 |ESHOP ORDER TEST BY AUTOMATION |RemoveHSIfromHSIPOTS5.8 |../EshopTools/Database_Validation/Database_Scenario.xlsx |1.6 |
  
 
 
 #Swati
  @RemoveEssentialhome5.9
  Scenario Outline: MACD Scenario on HSI + POTS(Essential Home phone Bundle)  during  CH remove POTS 5.9
    
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
    Then I Remove the existing product POTS
    Then Take a ScreenShot "<scen>"
    And I click on continue button
    Then I should be in customize service page
    And I click again on contine button
    Then I add call referral
    And I click on continue button of scheduling page
    And I click again click Continue button on change account page
    And I selected Yes for the review in order summary page
    Then I enter the special remark in Additional Order Remarks field "<Additional Order Remarks>"
    Then I clicked submit order button
    Then I get account number from application
    Then Take a ScreenShot "<scen>"
    Then I validate Databases for statas and update file"<filelocation1>" "<TCID>" "<scen>"
    #Then I get order number from application and provision it in Env "<Environment>" 
     Then Take a ScreenShot "<scen>"
   
    Examples: 
    | Environment   | Env | firstName | lastName | phoneNo    | account number |Additional Order Remarks       |scen           |filelocation1                                            |TCID|
    | Test2         | E2E | happy     | time     | 7673938393 |      690102231 |ESHOP ORDER TEST BY AUTOMATION |RemoveEssentialhome5.9|../EshopTools/Database_Validation/Database_Scenario.xlsx |1.6 |
      

  #Sachin script
      @CToE_REQ_5.10
    Scenario Outline: MACD Scenario on change to add Home Phone then Cancel order 5.10
	  Given I should be on Eshop login screen
    When I enter username and password
    And I enter the "<firstName>" "<lastName>" "<phoneNo>" in ESHOP customer information screen
    Then I click on Account or Order already exists
    And I enter only the completed account "<completed_accountnum>"
    Then I click let's go button
    Then I should be in existing products page
    Then I click on Make changes button
    Then I should be in Product offer page
    Then I select HomePhone
	  Then I select required option for voice mail "<Voice Mail>"
    Then I select required option for Wire Maintenance Plan "<Wire Maintenance Plan>"
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
    
    Then I Click on start new order button
    And I enter the "<firstName>" "<lastName>" "<phoneNo>" in ESHOP customer information screen
    Then I click on Account or Order already exists
    And I enter only the completed account "<completed_accountnum>"
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
     | Environment  | Env | firstName | lastName | phoneNo    | completed_accountnum  | Voice Mail | Wire Maintenance Plan |scen           |filelocation1                                            |TCID|
     | Test2        | E2E | THOMAS    | HILLA    | 4043564343 | 690084283             | No         | No                    |CToE_REQ_5.10  |../EshopTools/Database_Validation/Database_Scenario.xlsx |1.6 |
  

  