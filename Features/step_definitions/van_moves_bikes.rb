require 'van'

Given(/^a van$/) do
	van = Van.new
end

Given(/^broken bikes$/) do
	broken_bikes 
end

When(/^van receives broken bikes from station$/) do
  van.receives(broken_bikes) # express the regexp above with the code you wish you had
end

Then(/^garage receives broken bikes from van$/) do
 garage.receives(broken_bikes)
end