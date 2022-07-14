Feature: SpiceJet webApplication Testing 
 
 Background: SetUp the bowser
 Given set path for webdriver
 When Launch the browser
 Then Launch the url

Scenario: Book Ticket
 
 
 Given Select from and to city
 When Select date
 Then click on Book Ticket
 
 