require 'rails_helper'

RSpec.describe Location, :type => :model do

	before :each do
		@loc=Location.create name: "tenTravel", city: "Paris"
	end

   it "is correctly method" do
   		#loc=Location.create name: "tenTravel", city: "Paris"
        expect(Location.iron_find4(@loc.id)).to eq (Location.find(@loc.id))
    end

     it "is correctly metho2" do
   		#loc=Location.create name: "tenTravel", city: "Paris"
        expect(Location.last_created(10)).to eq (Location.last(10))
    end

    
end
