FactoryBot.define do
  factory :vehicle_parking do
    vehicle_registration { Faker::Vehicle.license_plate }
    date_entry { Time.current }
    date_exit { Time.current + 2.hours }
    price { 1.5 }
    customer
  end
end