Feature: To check HomePage functionality 

	
	
Scenario Outline: Add new Item 
	Given launch the homepage url 
	When enter valid credentials <username> and <password> 
	Then you are allowed to enter 
	
	Examples:
	| username | password |
	| ramu	   |  kaka    |