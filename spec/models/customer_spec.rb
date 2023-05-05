require 'rails_helper'

RSpec.describe Customer, type: :model do
  describe "validations" do
    subject { build(:customer) }
    it { should validate_presence_of(:document) }
    it { should validate_uniqueness_of(:document).case_insensitive }
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:email) }
    it { should validate_uniqueness_of(:email) }
    it { should validate_presence_of(:mobile_phone) }
    it { should validate_uniqueness_of(:mobile_phone).case_insensitive }
  end
end