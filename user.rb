class User
	attr_reader :name, :id, :status, :fare
	def initialize(name)
		@id = rand(10000..99999)
		@name = name
		@status = "Not Renting"
	end

	def rent(scooter,station,start_time)
		if @status == "Renting"
			puts "Please return current scooter before renting another one"
		else
			if scooter.status == "Available"
				scooter.leave(station)
				@start_time = start_time.to_i
				@status = "Renting"
			else
				puts "Scooter not available at this station."
			end
		end
	end

	def return(scooter,station,end_time)
		scooter.park(station)
		@end_time = end_time.to_i
		@status = "Not Renting"
		payment(@start_time,@end_time)
	end

	def payment(start_time,end_time)
		@fare = 5 + (end_time - start_time)/60 #RM5 base rate + RM1/min 
		puts "The fare is #{@fare}"
	end
end