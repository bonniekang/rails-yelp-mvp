# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
epicure1 = { name: "Epicure", address: "75008 Paris", category: "french"}
dishoom2 = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "french"}
epicure2 = { name: "Epicure", address: "75008 Paris", category: "french"}
dishoom2 = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "french"}
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "french"}

[epicure1,dishoom2,epicure2,dishoom2,pizza_east].each do |r|
  restaurant = Restaurant.create!(r)
  puts "created #{restaurant.name}"
end
