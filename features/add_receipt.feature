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

Scenario: View receipt list after adding receipt
	Given I have added "t7" with date "2013-December-4", cost "1.00", store "lemonade stand", payment "4321"
	And I have added "t8" with date "2013-December-5", cost "100.00", store "Apple", payment "1234"
	And I am on the home page
	Then I should see "t7" on "the home page"
	And I should see "t8" on "the home page"
	