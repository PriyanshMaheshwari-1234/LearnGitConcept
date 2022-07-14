@EshopTestScripts @MACDScripts @EshopRegression @MACD_Change
Feature: MACD Scenarios on Change Add
   
  #need data
    @ATC_MACD_5.7
    Scenario Outline: MACD Scenario on HSI + CVOIP  during CH remove CVOIP
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
    Then I Remove the existing product CVOIP
    Then Take a ScreenShot "<scen>"
    Then I check for return deposit amount for removed product if any available
    And I click on continue button
    Then I should be in customize service page
    And I click again on contine button
    Then I add a call referral for POTS product removal
    Then Take a ScreenShot "<scen>"
    And I click on continue button of scheduling page
	  And I click on continue button on Account Information page for MACD orders
    When I selected Yes for the review in order summary page
    #Then I clicked submit order button
    # Then I should able to submit order successfully
    # Then I get account number from application
    #Then I validate Databases for statas"<filelocation1>" "<TCID>"
    
    Examples: 
      | Env | firstName | lastName | phoneNo    |account number| address                                  | Date | Month | Year | SSN       | zip code | Ease_Option | Voice Mail | Wire Maintenance Plan | Port in a phone number? | Need new jacks or wiring? |
      | E2E | Jones     | Smith    | 4029986730 |683241518     | 1693 GARFIELD AVE, DUBUQUE, IA,52001,USA | 02   |    02 | 1987 | 666601283 | No       | BASIC       | No         | No                    | No                      | No Work Is Needed ($0)    |
 
 
   
       #eshop issue not able to validate
      @ATC_MACD_eshop_vacation_restore
  Scenario Outline: Vacation Restore for HSI only.
    #Given I should be on SFC login screen
    #When I enter username and password
    #Then I search order in SFC page with account number "<account number>"
    #Then I click on order eshop button in SFC page to proceed to Eshop Page
    Given I should be on Eshop login screen
    When I enter username and password
    And I enter the "<firstName>" "<lastName>" "<phoneNo>" in ESHOP customer information screen
    Then I click on Account or Order already exists
    When I enter only the completed account "<account number>"
    Then I click let's go button
    Then I should be in existing products page
    Then I click on Vacation Service
    And I select Vacation Restore from the dialog box
    Then Take a ScreenShot "<scen>"
    And I click on Continue button on vacation service dialog box
    And I click on continue button
    Then I should be in customize service page
    Then I click again on contine button
    And I select the provided due date for installation "<Due Date>"
    Then Take a ScreenShot "<scen>"
    When I click on continue button on vacation order scheduling page
    And I select current billing address
    And I click on continue button for Vacation Restore order in Account Information page
    And I selected Yes for the review in order summary page
    #Then I clicked submit order button
    #Then I get account number from application
    #Then I validate Databases for statas"<filelocation1>" "<TCID>"

    Examples: 
      | Env  | firstName | lastName | phoneNo    | account number | Due Date |
      | ITV1 | Jones     | Smith    | 4029986730 |      690102059 | Aug28    |
      
      
   
  #need data to check
   @ATC_MACD_4.9
  Scenario Outline: MACD Scenario on H S I Move and speed not available at new address
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
    # It should display lower speed at that location- needs to be verified with valid test data
    
   Then I select the best "<Installation_option>" installation option
    Then I select the number of device needed "<Device Quantity>"
    And I click continue button from existing products and move service page
    And I click again continue button in Customer Service Page
    And I click to reserve appointment
    Then Take a ScreenShot "<scen>"
    And I click on continue button of scheduling page
    #And I select mail my bill
    And I click Continue button on account information page
    And I selected Yes for the review in order summary page
    Then I clicked submit order button
    #Then I should able to submit order successfully
     #Then I get account number from application
     #Then I validate Databases for statas"<filelocation1>" "<TCID>"
   
   Examples: 
      | Env | firstName | lastName | phoneNo    | new_address                     | account number | Installation_option | Device Quantity | removal_reason |
      | E2E | Jones     | Smith    | 4029986730 | 4847 LISBON ST DENVER CO 80249  |     683173606  |  Tech Install ($99) | 2 devices       | MOVED          |
   
   
    
   
   
   
    
   
   
   

      
   
      
     
      
      