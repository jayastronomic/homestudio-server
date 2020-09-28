# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'

Studio.destroy_all

i = 20
while i >= 1 
    Studio.create(name: Faker::Company.name, img: Faker::LoremFlickr.colorized_image, description: Faker::Lorem.paragraph, street_address: Faker::Address.street_address, city: Faker::Address.city, state: Faker::Address.state, zip_code: Faker::Address.zip_code, price: Faker::Commerce.price, guests: Faker::Number.between(from: 1, to: 10), longitude: Faker::Address.longitude, latitude: Faker::Address.latitude, neighborhood: Faker::Bank.name, amenities: (1..4).collect { Faker::House.furniture} ).save
    i -= 1
end