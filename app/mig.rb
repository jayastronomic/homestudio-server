class CreateListings < ActiveRecord::Migration[6.0]
    def change
      create_table :listings, id: :uuid do |t|
        t.string :name
        t.string :img
        t.string :description
        t.string :price
        t.integer :guests
        t.float :latitude
        t.float :longtitude
  
        t.timestamps
      end
    end
  end


  require 'faker'

User.destroy_all
Listing.destroy_all


j = User.create(first_name: "Julian", last_name: "Antonio", username: "jayastronomic", street_address: Faker::Address.street_address, city: Faker::Address.city,  state: Faker::Address.state, zip_code: Faker::Address.zip_code )

i = 20
while i >= 1 
    j.listings.build(name: Faker::Company.name, img: Faker::LoremFlickr.colorized_image, description: Faker::Lorem.paragraphs, price: Faker::Commerce.price, guests: Faker::Number.between(from: 1, to: 10), longtitude: Faker::Address.longitude, latitude: Faker::Address.latitude, user_id: j.id).save
    i -= 1
end


User.create(username: "jujuju", first_name: "julian", last_name: "smith", email: "jayastronomic@hotmail.com", street_address: "819 W. 60th st", city: "Chicago", state: "IL", zip_code: "60621", password_digest: "password2")
