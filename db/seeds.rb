# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
SuperPower.destroy_all
User.destroy_all


User.create(
  name: "Alexandra Delory",
  email: "alexandra@example.com",
  password: "password"
)

100.times do
  super_power = SuperPower.new(
    name: Faker::Company.name,
    description: Faker::Address.street_address,
    price: rand(200..500),
    user_id: User.all.sample.id
  )
  super_power.save!
end
SuperPower.create([

    { name: "Fire control", description: "You'll be able to control fire, burn the city and all your enemies", price: 200, user_id: User.all.sample.id, poster_url: "invisible.png"},
    { name: "Walk on water", description: "You'll be like your idol Jesus", price: 300, user_id: User.all.sample.id },
    { name: "Breathe in the water", description: "Because drowning is not fun", price: 400, user_id: User.all.sample.id },
    { name: "Invisibility robe", description: "To have the opportunity to slap your haters without them knowing", price: 350, user_id: User.all.sample.id }
])

puts "c'est cool "
