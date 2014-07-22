require 'rails_helper'

RSpec.describe Location, :type => :model do

   it "is correctly method" do
        expect(Location.iron_find4("Paris")).to eq ("SHURE")
    end
end
