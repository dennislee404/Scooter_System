class Scooter
	attr_reader :id, :status, :station
	def initialize(id=rand(1000..9999))
		@id = id
		@status = "Pending"
		@station = "None"
	end

	def park(station)
		station.plus
		@status = "Available"
		@station = station
	end

	def leave(station)
		station.minus
		@status = "Rented"
		@station = "None"
	end

	def broken!(station)
		station.minus
		@status = "Broken"
		@station = "None"
	end

	def repaired!(station)
		station.plus
		@status = "Available"
		@station = station
	end
end

