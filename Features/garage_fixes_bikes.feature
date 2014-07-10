Feature: garage fixes bikes
There is a garage that can fix broken bikes.

@feature4 @passing
Scenario: garage fixes bikes
	Given a garage
	And bikes
	When a bike is fixed
	Then bikes are no longer broken 
	And become working bike