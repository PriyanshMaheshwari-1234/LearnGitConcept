@EshopTestScripts @EShopSanityNoDepositsAccount
Feature: Non Gpon to Gpon

      
     #eshop issue 
  @vacRestoreHSI8.1
  Scenario Outline: Click on vacRestore
	
	  Given I should be on Eshop login screen
    When I enter username and password
    And I enter the "<firstName>" "<lastName>" "<phoneNo>" in ESHOP customer information screen
    Then I click on Account or Order already exists
    When I enter only the completed account "<ExistAccount>"
    Then I click let's go button
    
    Then I should be in existing products page
    	
	 Then I click on Vacation Service
    And I select Vacation Restore from the dialog box
    And I click on Continue button on vacation service dialog box
    Then Take a ScreenShot "<scen>"
    And I click on continue button
    Then I should be in customize service page
    And I click again on contine button
    And I select the provided due date for installation in Due Date format "<Due Date>"
    When I click on continue button on vacation order scheduling page
    And I select current billing address
    And I click on continue button for Vacation Restore order in Account Information page
    And I selected Yes for the review in order summary page
    Then I clicked submit order button
    Then I get account number from application
    #Then I validate Databases for statas"<filelocation1>" "<TCID>"

	
	Examples: 
      | Env  | firstName | lastName | phoneNo    | account number | Due Date | ExistAccount |scen             |filelocation1                                            |TCID|
      | ITV1 | Jones     | Smith    | 4029986730 |      578402918 | Aug23    |690062709     |vacRestoreHSI8.1 |../EshopTools/Database_Validation/Database_Scenario.xlsx |1.6 |
      
      
      
 
	  
    
      