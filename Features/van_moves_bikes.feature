Feature: van moves bikes 
A van is used to move broken bikes from the stations to the garage. 
It can also be used to take fixed bikes back to the station(s).

@feature5
Scenario: van moves broken bikes from station to garage
	Given a van
	And broken bikes
	And a station
	And a garage
	When van receives broken bikes from station
	Then garage receives broken bikes from van

@feature6
Scenario: van moves working bikes from garage to station
	Given a van
	And working bikes
	And a garage
	And a station
	When van moves working bikes
	Then van receives working bikes from garage
	And station receives working bikes from van