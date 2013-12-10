Feature: User can sign into their own account

Scenario: User login
	Given I am on the sign in page
	And I fill in "Username" with "tsg9292"
	And I fill in "Password" with "receipts"
	When I follow "Login"
	Then I should be on the Atlas home page

Scenario: Failed password
	Given I am on the sign in page
	And I fill in "Username" with "tsg9292"
	And I fill in "Password" with "blah"
	When I follow "Login"
	Then I should be on the login page

Scenario: Failed account
	Given I am on the sign in page
	And I fill in "Username" with "blah"
	And I fill in "Password" with "blah blah"
	When I follow "Login"
	Then I should be on the login page