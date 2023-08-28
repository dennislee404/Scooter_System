require 'csv'

class DataManager
	def self.load_station(filename)
		station_data = []

		CSV.foreach(filename, headers: true) do |row|
			station_name = row[0]
			station_max_capacity = row[1].to_i

			station = Station.new(station_name,station_max_capacity)

			station_data << station
		end

		station_data
	end

	def self.load_scooter(filename,station)
		scooter_data = []

		CSV.foreach(filename, headers: true) do |row|
			scooter_id = row[0].to_i
			@station = station.name
			# puts station.name
			# puts row[1]

			if row[1] == station.name
				scooter = Scooter.new(scooter_id)
				scooter.park(station)

				scooter_data << scooter
			end
		end

		scooter_data
	end

	def self.save_scooter_database(filename,scooter_id,user_name,rent_start_time,rent_end_time)
		File.open(filename, 'a+') do |file|
			file.puts("#{scooter_id},#{user_name},#{rent_start_time},#{rent_end_time}")
		end
	end
end			