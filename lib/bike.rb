class Bike

	def initialize
		@broken = false
		@available = true
	end

	def break!
		@broken = true
		@available = false
	end

	def broken?
		@broken
	end

	def available?
		@available
	end

	def fix!
		@broken = false
		@available = true
	end


	def broken_bikes
		broken_bikes = @bikes.select {|bike| broken?}
	end

end