class User
	attr_reader :name, :id, :card, :status
	def initialize(name)
		@id = rand(10000..99999)
		@name = name
		@status = "Not Renting"
		@card = Card.new()
	end

	def rent(scooter,station)
		if @status == "Renting"
			puts "Please return current scooter before renting another one"
		else
			scooter.leave(station)
			@status = "Renting"
		end
		@status
	end

	def return(scooter,station)
		scooter.park(station)
		@status = "Not Renting"
	end

	def travel(start_time,end_time)
		@start_time = start_time
		@end_time = end_time
		@fare = 5 + (end_time - start_time)/60 #RM5 base rate + RM1/min 

		if card.balance >= @fare
			card.deduct_fare(@fare)
		else
			puts "Insufficient fund in card"
		end
	end
end