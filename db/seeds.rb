# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do
    MyFriend.create(
        first_name: Faker::Name.unique.first_name,
        last_name: Faker::Name.unique.last_name,
        email: Faker::Internet.unique.email,
        street: Faker::Address.street_name,
        zip_code: Faker::Address.zip_code,
        city: Faker::Address.city,
        latitude: Faker::Address.latitude,
        longitude: Faker::Address.longitude,
        telephone: Faker::PhoneNumber.unique.phone_number,
        mobile: Faker::PhoneNumber.unique.cell_phone_in_e164
    )
end