class VehicleParking < ApplicationRecord
  belongs_to :customer
  validates :vehicle_registration, :date_entry, :customer_id, presence: true
  validates :vehicle_registration, uniqueness: true

end
