class Location < ActiveRecord::Base
	def self.iron_find4 (value)
		 where(city: "#{value}").first
	end
end
