# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"
SuperPower.destroy_all
User.destroy_all


User.create(
  name: "Alexandra Delory",
  email: "alexandra@example.com",
  password: "password"
)

10.times do
  super_power1 = SuperPower.new(
    name: Faker::Movie.title,
    description: Faker::Shakespeare.hamlet_quote,
    price: rand(200..500),
    user: User.last
  )
  file1 = URI.open("https://res.cloudinary.com/dwl5s1v4k/image/upload/v1687352664/development/cnwz4gebvoo1moni6cn79maqgytq.jpg")
  super_power1.poster_url.attach(io: file1, filename: "super", content_type: "image/png")
  super_power1.save
end

# SuperPower.create!([
#     { name: "Fire control", description: "You'll be able to control fire, burn the city and all your enemies", price: 200, user: User.last, file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg")
#       { name: "Walk on water", description: "You'll be like your idol Jesus", price: 300, user: User.last },
#       { name: "Breathe in the water", description: "Because drowning is not fun", price: 400, user: User.last },
#       { name: "Invisibility robe", description: "To have the opportunity to slap your haters without them knowing", price: 350, user: User.last }
#       ])



puts "c'est cool "
