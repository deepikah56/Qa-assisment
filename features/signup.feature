@Bug-tracker
Feature:  signup for demoqa
As a user
In order to signup for Bug-tracker
I need to be there in bug-tracker home page

@signup
Scenario:user signup
	Given I am in home page
	When  I click on signup button
	Then  I should able to see signup pop window

@valid_input
Scenario:user valid inputs
	Given I am in sign up pop window
	When  I entered name and username and email id
	And   I entered password and confirm password 
	Then  I should see the border color change to blue 
@signout
Scenario:user signout
	Given I am in bug-tracker page
	When  I click on signout button
	Then  I should see home page

