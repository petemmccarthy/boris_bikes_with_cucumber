

class Garage

	def initialize
		@bikes = []
	end

	def receive(bike)
		@bikes << bike
	end

	def bike_count
		@bikes.count
	end

	def fix!
		@broken = false
	end
end