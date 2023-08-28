# (Done) Scooters exist in two states: "Available" and "Rented."
# (Done) Implement methods to transition scooter states (e.g., rent and return) and display current status.
# (Done) Scooters can also be marked as "Broken," rendering them temporarily unavailable for rental until repaired.
# (Done) Broken scooters should be taken to the garage or repair shop for maintenance and returned to the fleet once repaired.
# (Done) Calculate and present rental duration and associated costs.
# (Done) Designate docking stations in specific areas for scooter returns.
# (Done) Docking stations possess a predefined scooter capacity.
# (Done) Users must return a rented scooter before they can rent another one.
# (Done) (Bonus) A way to keep track of information about the rented scooter, the user renting it, and the start and end times of the rental.
# (Bonus) Introduce a pricing system where rental costs vary based on different times of the day (peak hours vs. off-peak hours).

require './user.rb'	
require './scooter.rb'
require './station.rb'
require './datamanager.rb'

station_file = 'station.csv'
scooter_file = 'scooter.csv'
my_file = 'scooter_data.txt'

station_database = DataManager.load_station(station_file)
i = 0
while i < station_database.length
	scooter_database = DataManager.load_scooter(scooter_file,station_database[i])
	puts "#{station_database[i].name} currently have #{station_database[i].current_capacity} scooters."
	i += 1
end

#user1 = User.new("Dennis")

# rent_start_time = Time.now()
# rent_end_time = Time.now()+120
# # scooter2 = Scooter.new
# # scooter3 = Scooter.new(2307)
# # station1 = Station.new("Riverson",10)
# # station2 = Station.new("Sutera Avenue",5)

DataManager.save_scooter_database(my_file,scooter1.id,user1.name,rent_start_time,rent_end_time)


# scooter1 = Scooter.new()
# puts scooter1.id
# scooter2 = Scooter.new()
# puts scooter2.id
# scooter3 = Scooter.new(8455)
# puts scooter3.id

# string_start_time ='15:00:12'
# start_time_parts = string_start_time.split(":").collect{ |y| y.to_i }
# start_time = Time.new(Time.now.year, Time.now.month, Time.now.day, start_time_parts[0], start_time_parts[1], start_time_parts[2])
# p start_time

# string_end_time='19:32:12'
# end_time_parts = string_end_time.split(":").collect{ |y| y.to_i }
# end_time = Time.new(Time.now.year, Time.now.month, Time.now.day, end_time_parts[0], end_time_parts[1], end_time_parts[2])
# p end_time

# p duration_seconds = end_time.to_i - start_time.to_i


# user1 = User.new("Dennis")
# scooter1 = Scooter.new()
# scooter2 = Scooter.new()
# scooter3 = Scooter.new()
# station1 = Station.new("Riverson",2)
# station2 = Station.new("Sutera Avenue",1)
