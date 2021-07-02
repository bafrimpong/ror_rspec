FactoryBot.define do
  factory :my_friend do
    first_name { Faker::Name.unique.first_name }
    last_name { Faker::Name.unique.last_name }
    email { Faker::Internet.unique.email }
    street { Faker::Address.street_name }
    zip_code { Faker::Address.zip_code }
    city { Faker::Address.city }
    latitude { Faker::Address.latitude }
    longitude { Faker::Address.longitude }
    telephone { Faker::PhoneNumber.unique.phone_number }
    mobile { Faker::PhoneNumber.unique.cell_phone_in_e164 }
  end
end