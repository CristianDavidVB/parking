FactoryBot.define do
  factory :customer do
    document { Faker::Number.number( digits: 10)  }
    name { Faker::Name.name }
    email { Faker::Internet.email }
    mobile_phone { Faker::Number.number( digits: 10 ) }
  end
end