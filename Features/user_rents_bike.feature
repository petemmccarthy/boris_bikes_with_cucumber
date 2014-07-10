Feature: user rents bike
User rents bike from station

@feature1 @passing
Scenario: user rents bike from station
	Given a user
	And a bike
	And a station
	When user rents a bike
	Then station releases bike