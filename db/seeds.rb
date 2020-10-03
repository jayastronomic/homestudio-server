# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'

Studio.destroy_all

# i = 20
# while i >= 1 
#     Studio.create(name: Faker::Company.name, img: Faker::LoremFlickr.colorized_image, description: Faker::Lorem.paragraph, street_address: Faker::Address.street_address, city: Faker::Address.city, state: Faker::Address.state, zip_code: Faker::Address.zip_code, price: Faker::Commerce.price, guests: Faker::Number.between(from: 1, to: 10), longitude: Faker::Address.longitude, latitude: Faker::Address.latitude, neighborhood: Faker::Bank.name, amenities: (1..4).collect { Faker::House.furniture} ).save
#     i -= 1
# end


Studio.create(name: "Gravity Studios", img: "https://s3-media0.fl.yelpcdn.com/bphoto/2sx-b53oBM6fEQ4my2ekKw/348s.jpg" , description: "A well-equipped studio with a sound engineer on call", street_address: "2250 W. North Ave.", city: "Chicago" , state: "IL" ,zip_code: "60647" , price: 30 , guests: 0 , longitude: -87.684334 , latitude: 41.910550 , neighborhood: "Wicker Park" , amenities: ["wifi", "headphones", "speakers", "mixing table", "Macbook"] ) 
Studio.create(name: "Jungle Lords", img: "https://s3-media0.fl.yelpcdn.com/bphoto/E3C4sYJAW2rurx3YqD56ag/348s.jpg" , description: "A comfortable studio to in the Pilsen neighborhood" , street_address:  "1717 S. Racine Ave", city: "Chicago" , state: "IL", zip_code: "60608"  , price: 25 ,guests: 0 , longitude: -87.656143 , latitude: 41.858318 , neighborhood: "Pilsen", amenities: ["wifi", "headphones", "engineer on site"]) 
Studio.create(name: "Classick Studios", img: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSN7fYGY4s59NAMZs8DnFBcdZgl1_rbU_N94w&usqp=CAU" , description: "Quiet and peaceful place to and record and make music", street_address: "2950 W. Chicago Ave." , city: "Chicago", state: "IL" ,zip_code: "60622" ,price: 35 ,guests: 0, longitude: 	-87.70134 , latitude: 41.89563 , neighborhood: "Humboldt Park" , amenities: ["wifi", "headphones", "mixing table", "microphone"] ) 
Studio.create(name: "Electrical Audio" , img: "https://s3-media0.fl.yelpcdn.com/bphoto/pFSZhxfqSB9ndAkoMloGXw/348s.jpg" , description: "We provide quality service and our engineers are well equipped with the skills that you need ", street_address: "2621 W. Belmont Ave", city: "Chicago" , state: "IL" ,zip_code: "60618" ,price: 45 ,guests: 0 , longitude: -87.69375, latitude: 	41.93941, neighborhood: "Roscoe Village" , amenities: ["wifi", "headphones", "mixing table", "microphone"]) 
Studio.create(name: "The Foxhole Chicago", img: "https://s3-media0.fl.yelpcdn.com/bphoto/A6MB5a5IvOUc2qvbDmaOrg/348s.jpg" , description: "A vibrant and comfortable studio to create your art. ", street_address: "2244 W Montrose Ave", city: "Chicago" , state: "IL" ,zip_code: "60618" , price: 30 , guests: 0 , longitude: -87.69044 , latitude: 41.96131 , neighborhood: "Ravenswood" , amenities: ["wifi", "headphones", "mixing table", "macbook"] ) 
Studio.create(name: "SoundScape Studios", img: "https://s3-media0.fl.yelpcdn.com/bphoto/0uFKm18FQkIMi0qypiJ0pA/348s.jpg" , description:  "Engineers here are very professional and will help you achieve the sound you are looking for.", street_address: "2510 W. Chicago Ave." , city: "Chicago" , state: "IL" , zip_code: "60622" ,price: 50 ,guests: 0 , longitude: -87.68986, latitude: 41.89574 , neighborhood: "Ukraine Village" , amenities: ["wifi", "headphone","macbook", "mxixng table", "sub woofer"] ) 
Studio.create(name: "Sound Vault Studios", img: "https://s3-media0.fl.yelpcdn.com/bphoto/qIRfXebyxGZ5epLyR9V3gw/348s.jpg" , description: "Nice area to record your podcasts and music" , street_address: "4255 N. Knox Ave.", city: "Chicago", state: "IL" , zip_code: "60641", price: 30 , guests: 0 , longitude: -87.68986 , latitude: 41.89574, neighborhood: "Old Irving Park", amenities: ["wifi", "headphones", "mixing table", "engineer on site", "macbook"])
Studio.create(name: "Rax Trax Recording", img: "https://s3-media0.fl.yelpcdn.com/bphoto/NY7D0G88Lj1xPn5sX1nsuw/348s.jpg" , description: "Our studio has been around for a while and we provide great service", street_address: "3126 N. Greenview Ave", city: "Chicago" , state: "IL" , zip_code: "60657", price: 50 , guests: 0 , longitude: -87.66619 , latitude: 41.93873 , neighborhood: "Roscoe Village" , amenities: ["wifi", "headphones", "mixing table", "engineer on site", "macbook"])