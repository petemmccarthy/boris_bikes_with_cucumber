require 'bike'
require 'station'

describe Bike do

	let(:bike) {Bike.new}

	it 'creates a bike' do
		expect(bike).to be_a Bike
	end

	it 'when created it is a working bike' do
		@broken == false
		expect(bike.broken?).to eq false
	end

	it 'a bike breaks' do
		@broken == false
		bike.break!
		@broken == true
		expect(bike.broken?).to eq true
	end

	it 'knows that working bikes are available' do
		expect(bike.available?).to eq true
	end

	it 'makes a broken bike no longer available' do
		broken_bike = Bike.new
		broken_bike.break!
		expect(broken_bike.available?).to eq false
	end

	it 'can be fixed when broken' do
		bike = Bike.new
		bike.break!
		@broken == true
		bike.fix!
		@broken == false
		expect(bike.broken?).to eq false
	end

	it 'selects broken bikes' do
		broken_bike = Bike.new
		bike.break!
		station= Station.new
		station.dock(broken_bike)
		expect(station.broken_bikes).to eq([broken_bike])
	end

end