class LocationsController < ApplicationController
	def index
		@locations = Location.last_created(10)
	end

	def show 
		@location = Location.find(params[:id])
	rescue ActiveRecord::RecordNotFound
		render plain: 'not_found', status: 404 unless @location

	end
end
