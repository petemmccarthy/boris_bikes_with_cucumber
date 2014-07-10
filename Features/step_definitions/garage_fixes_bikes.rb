require 'garage'
require 'bike'

Given(/^a garage$/) do
  garage = Garage.new
end

Given(/^bikes$/) do
  bike = Bike.new
  bike.break!
  @broken = true
end

When(/^a bike is fixed$/) do
  bike = Bike.new
  bike.fix!
end

Then(/^bikes are no longer broken$/) do
  @broken = false
end

Then(/^become working bikes$/) do
  @bikes 
end