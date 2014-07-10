require 'user'
require 'bike'
require 'station'

When(/^user returns bike$/) do
  user = User.new
  user.return
end

Then(/^station docks bike$/) do
  station = Station.new
  bike = Bike.new
  station.dock(bike)
end