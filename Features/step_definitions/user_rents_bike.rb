require 'user'
require 'bike'
require 'station'

Given(/^a user$/) do
	user = User.new  
end

Given(/^a bike$/) do
  bike = Bike.new
end 

Given(/^a station$/) do
  station = Station.new
end

When(/^user rents a bike$/) do
  user = User.new
  user.rent
end

Then(/^station releases bike$/) do
  station = Station.new
  bike = Bike.new
  station.release(bike)