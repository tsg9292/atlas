Feature: User can manually add receipt

	As a user who wants to create a new receipt
	So that I can add information to my collections
	I want to be able to add new receipts

Background: receipts have been added to database

	Given the following receipts exist:
	| title | date        | cost  | store    | payment |
	| r1    | 25-Nov-2013 | 25.00 | Best Buy | 1234    |
	| r2    | 26-Nov-2013 | 10.50 | Apple    | 1234    |
	| r3    | 27-Nov-2013 | 46.99 | Shell    | 4444    |
	| r4    | 27-Nov-2013 | 32.64 | Safeway  | 9876    |
	| r5    | 29-Nov-2013 | 5.00  | Best Buy | 1234    |
	| r6    | 02-Dec-2013 | 80.00 | Friend   | 1111    |

	And I am on the home page

Scenario: Add a receipt
	When I follow "Add new receipt"
	Then I am on the new receipt page
	When I fill in "Title" with "r6"
	And I fill in "Cost" with "10.54"
	And I press "Save Changes"
	Then I am on the Atlas home page
	And I should see "10.54"