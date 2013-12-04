Feature: User can manually add receipt

Scenario: Add a receipt
	Given I am on the home page
	When I follow "Add new receipt"
	Then I should be on the Create New Receipt page
	When I fill in "Title" with "r6"
	And I fill in "Cost" with "10.54"
	And I press "Save Changes"
	Then I should be on the Atlas home page
	And I should see "10.54"