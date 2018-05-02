@User_signup_and_logout
Feature:  As End user
I should able to signup to the application
So that I should be able to manage application

@Smoke
Scenario:Trying to signup with valid credentials
	Given I am on Bug-tracker homepage
	When I signup with valid credential
	Then I should be able to sign in succesfully
@Logout
Scenario:logging out of the application
	Given I am in dashboard page
	When I click on signout button
	Then I should see "Logged out!"

