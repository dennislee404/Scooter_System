# (Done) Scooters exist in two states: "Available" and "Rented."
# (Done) Implement methods to transition scooter states (e.g., rent and return) and display current status.
# (Done) Scooters can also be marked as "Broken," rendering them temporarily unavailable for rental until repaired.
# (Done) Broken scooters should be taken to the garage or repair shop for maintenance and returned to the fleet once repaired.
# Calculate and present rental duration and associated costs.
# (Done) Designate docking stations in specific areas for scooter returns.
# (Done) Docking stations possess a predefined scooter capacity.
# (Done) Users must return a rented scooter before they can rent another one.
# (Bonus) A way to keep track of information about the rented scooter, the user renting it, and the start and end times of the rental.
# (Bonus) Introduce a pricing system where rental costs vary based on different times of the day (peak hours vs. off-peak hours).

require './user.rb'
require './card.rb'
require './scooter.rb'
require './station.rb'

user1 = User.new("Dennis")
scooter1 = Scooter.new()
scooter2 = Scooter.new()
station1 = Station.new("Riverson",2)
station2 = Station.new("Sutera Avenue",1)

puts scooter1.status
puts scooter2.status
puts station1.current_capacity
puts scooter1.park(station1)
puts scooter2.park(station1)
puts "--------------"
puts station1.name
puts station1.current_capacity
puts station1.max_capacity
puts station2.name
puts station2.current_capacity
puts station2.max_capacity
puts "-------------"
puts user1.status
user1.rent(scooter1,station1)
user1.rent(scooter2,station1)
puts scooter1.status
puts station1.current_capacity
user1.return(scooter1,station2)
puts scooter1.status
puts station2.current_capacity

# string_start_time ='15:00:12'
# start_time_parts = string_start_time.split(":").collect{ |y| y.to_i }
# puts start_time_parts[0]
# puts start_time_parts[1]
# puts start_time_parts[2]
# start_time = Time.new()
# p start_time

# string_end_time='19:32:12'
# end_time_parts = string_end_time.split(":").collect{ |y| y.to_i }
# end_time = Time.new(Time.now.year, Time.now.month, Time.now.day, end_time_parts[0], end_time_parts[1], end_time_parts[2])
# p end_time

# p duration_seconds = end_time.to_i - start_time.to_i