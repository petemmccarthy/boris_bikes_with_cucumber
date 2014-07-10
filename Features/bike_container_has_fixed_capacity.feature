Feature: bike container has fixed capacity
The van, all stations and the garage have fixed capacity, so they cannot take more bikes that they can hold.

@feature7
Scenario: bike container has fixed capacity
	Given a bike container
	When bike container reaches fixed capacity
	Then bike container can no longer accept bikes
	And is full