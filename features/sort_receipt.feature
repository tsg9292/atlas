
Feature: User can sort receipts by date

	As a user who wants to sort receipts by date or cost
	So that I can view receipts by date or cost
	I want to be able to sort receipts by date or cost

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

Scenario: sort receipts by date
	When I follow "Purchase Date"
	Then I should see "2013-11-25" before "2013-11-26"
	
//Scenario: sort receipts by date
//	When I follow "Purchase Date"
//	Then I should see "2013-11-25" before "2013-11-26"
