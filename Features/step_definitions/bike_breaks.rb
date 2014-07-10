require 'bike'

When(/^bike breaks$/) do
  bike = Bike.new
  bike.break!
end

Then(/^bike is no longer available for rental after returned$/) do
  bike = Bike.new
  bike.available?
end