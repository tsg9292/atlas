Feature: User can sign up for a new account

Scenario: User sign up
	Given I am on the new user page
	And I fill "username:" with "test"
	And I fill "email:" with "test@test"
	And I fill "password:" with "test"
	And I fill "password confirmation:" with "test"
	Then I should be on the home page
	And "current_user.username" should be "test" 
	