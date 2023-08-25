class Scooter
	attr_reader :id, :status, :station
	def initialize(id=rand(1000..9999))
		@id = id
		@status = "Available"
		@station = nil
	end

	def park(station)
		station.plus
		@status = "Available"
		@station = station
	end

	def leave(station)
		station.minus
		@status = "Rented"
		@station = nil
	end

	def broken!(station)
		station.minus
		@status = "Broken"
		@station = nil
	end

	def repaired!(station)
		station.plus
		@status = "Available"
		@station = station
	end
end

