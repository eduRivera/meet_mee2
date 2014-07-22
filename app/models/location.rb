class Location < ActiveRecord::Base
	def self.iron_find4 (value)
		 where(id: "#{value}").first
	end
	def self.last_created(value)
		Location.last("#{value}")
	end
	 scope :last_created, ->(value) { Location.last(value) }
end
