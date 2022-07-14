@Provisioning
Feature: Provisioning the order

  #Provisioning
  @Provisioning
  Scenario Outline: Provisioning the order 
  #add the below line to existing script after submitting order step
  #Ex: 
  #Then I get account number from application
  #Then Take a ScreenShot "<scen>"
  #Then I get order number from application and provision it in Env "<Environment>" 
  #Add environment column to existing test data table
  
    Then I get order number from application and provision it in Env "<Environment>" 
    
    Examples: 
     |  Env   | Environment |
     |  E2E   | Test2       | 
     
     
     @Provisioning1
  Scenario Outline: Provisioning the order 
  Given I should be on Tara tool screen
    Then I enter order number1 "<Order number>"
    And I enter environment1 "<Environment>"
    And I click on Try it out button1
    And I validate the results
    
    Examples: 
     |  Env   | Order number | Environment |
     |  E2E   | 1000084567   | Test2       | 