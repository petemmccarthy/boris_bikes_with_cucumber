require 'station'
require 'bike'

describe Station do

	let(:bike) {Bike.new}
	let(:station) {Station.new}

	it 'creates a station' do
		expect(station).to be_a Station
	end


	it 'allows station to release a bike' do
		bike_count = 1
		station.release(bike)
		bike_count = 0
		expect(station.bike_count).to eq (0)
	end

	it 'the station can dock a bike' do
		bike_count = 0
		station.dock(bike)
		bike_count = 1
		expect(station.bike_count).to eq 1
	end

	it 'selects broken bikes' do
		broken_bike = Bike.new
		bike.break!
		station= Station.new
		station.dock(broken_bike)
		expect(station.broken_bikes).to eq([broken_bike])
	end

end