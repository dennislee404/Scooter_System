class DataManager
	def self.save_scooter_database(filename,scooter_id,user_name,rent_start_time,rent_end_time)
		File.open(filename, 'a+') do |file|
			file.puts("#{scooter_id},#{user_name},#{rent_start_time},#{rent_end_time}")
		end
	end
end			