Feature: User can sign up for a new account

Scenario: User sign up
	Given I am on the login page
	When I follow "Create New Account"
	Then I should be on the Create New Account page
	