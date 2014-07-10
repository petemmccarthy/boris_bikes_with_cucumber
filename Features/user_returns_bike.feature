Feature: user returns bike
User returns bike to station at the end of the rental.

@feature2 @passing
Scenario: user returns bike to station
	Given a user
	And a bike
	And a station
	When user returns bike
	Then station docks bike