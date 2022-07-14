@EshopTestScripts @MACDScripts @MACD_Change
Feature: MACD Scenarios on amend orders for Migrated HSI Postpaid accounts for SUP3

 @CToE_REQ_2.8
    Scenario Outline: MACD Scenario on Existing HSI first change Speed, add discount if any then add voice 2.8
  
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
    Then Take a ScreenShot "<scen>"
    And I click on continue button
    Then I should be in customize service page
    And I select Closers and Promos tab
    Then Take a ScreenShot "<scen>"
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
    Then Take a ScreenShot "<scen>"
    Then I click let's go button
    Then I should be in existing products page
    Then I click on Make changes button
    Then I select HomePhone
    Then Take a ScreenShot "<scen>"
	  Then I select required option for voice mail "<Voice Mail>"
    Then I select required option for Wire Maintenance Plan "<Wire Maintenance Plan>"
    And I click on continue button
    Then I should be in customize service page
    And I select Assigned TN
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
    | Environment   | Env | firstName | lastName | phoneNo    |Voice Mail | Wire Maintenance Plan | completed_accountnum |scen           |filelocation1                                            |TCID|
    | Test2         | E2E | THOMAS    | HILLA    | 4043564343 | No        | No                    | 690087855            |CToE_REQ_2.8   |../EshopTools/Database_Validation/Database_Scenario.xlsx |1.6 |
       

#sachin script
  @CToE_REQ_2.9

    Scenario Outline: MACD Scenario on Existing HSI to create jeopardy order ,first add voice then change speed 2.9
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
    Then Take a ScreenShot "<scen>"
	 Then I select required option for voice mail "<Voice Mail>"
    Then I select required option for Wire Maintenance Plan "<Wire Maintenance Plan>"
    And I click on continue button
    Then I should be in customize service page
    And I select Assigned TN
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
    Then Take a ScreenShot "<scen>"
    Then I click let's go button
    Then I should be in existing products page
    Then I click on Make changes button
    Then I choose last speed option
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
    | Environment   | Env | firstName | lastName | phoneNo    | completed_accountnum | Voice Mail    | Wire Maintenance Plan |scen           |filelocation1                                            |TCID|
    | Test2         | E2E | THOMAS    | HILLA    | 4043564343 | 690111390            |Yes ($0.00/mo) | No                    |CToE_REQ_2.9 |../EshopTools/Database_Validation/Database_Scenario.xlsx |1.6 |
      


 #Priyansh script
    @ChangespeedAddJack2.10
	  Scenario Outline: change speed and then submit a order and then again add jack and submit 2.10
	  Given I should be on Eshop login screen
    When I enter username and password
    And I enter the "<firstName>" "<lastName>" "<phoneNo>" in ESHOP customer information screen
    Then I click on Account or Order already exists
    When I enter only the completed account "<ExistAccount>"
    Then I click let's go button
    
    Then I should be in existing products page
    Then I click on Make changes button
    Then I should be in Product offer page
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
    
    Then I Click on start new order button
  
    And I enter the "<firstName>" "<lastName>" "<phoneNo>" in ESHOP customer information screen
    Then I click on Account or Order already exists
    When I enter only the completed account "<ExistAccount>"
    Then I click let's go button
    Then I should be in existing products page
    Then I click on Make changes button
    When I click on continue button
    Then I should be in customize service page
    Then I select options from technician charges "<addjack>"
    Then Take a ScreenShot "<scen>"
    Then I click again on contine button
    Then I should get earliest available appointment text
    And I click to reserve appointment
    And I select reason for appt time changing
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
    | Environment  | Env | firstName | lastName | phoneNo    | Select_speed               | ExistAccount   | scen                  |filelocation1                                            |TCID|
    | Test2        | E2E | Thomas    | Hilla    | 4029986730 | HSI Up to 100 Mbps/10 Mbps | 690103312      |ChangespeedAddJack2.10 |../EshopTools/Database_Validation/Database_Scenario.xlsx |1.6 |
    

  