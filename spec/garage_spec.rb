require 'garage'
require 'bike'

describe Garage do
	let(:garage) {Garage.new}

	it 'creates a garage' do
		expect(garage).to be_a Garage
	end

	it 'has no bikes when created' do
		expect(garage.bike_count).to eq 0
	end

	it 'receives a bike' do
		bike = Bike.new
		bike_count =  0
		garage.receive(bike)
		expect(garage.bike_count).to eq (1)
	end

	it 'fixes a bike' do
		bike = Bike.new
		bike.break!
		@broken == true
		bike.fix!
		@broken == false
		expect(bike.broken?).to eq false
	end

end