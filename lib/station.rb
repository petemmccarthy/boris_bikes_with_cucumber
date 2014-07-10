class Station

	def initialize()
		@bikes = []
	end

	def dock(bike)
		@bikes << bike
	end


	def release(bike)
		@bikes.delete(bike)
	end

	def bike_count
		@bikes.count
	end

	def broken_bikes
		broken_bikes = @bikes.select {|bike| broken?}
	end


end