require 'rails_helper'

RSpec.describe VehicleParking, type: :model do
  describe "validations" do
    subject { build(:vehicle_parking)}

    it { should validate_presence_of(:vehicle_registration) }
    it { should validate_uniqueness_of(:vehicle_registration) }
    it { should validate_presence_of(:date_entry) }

    describe "association" do
      it { should belong_to(:customer) }
    end
  end
end
