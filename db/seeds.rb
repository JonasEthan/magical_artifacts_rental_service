# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'
puts "Start seeding Users"
3.times do

  User.create(
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 8)
  )
end
puts "End seeding Users"

puts "Start seeding Artifacts"

10.times do
  Artifact.create(
    user_id: rand(1..3),
    price: Faker::Number.number(digits: 3),
    name: Faker::Games::Dota.item,
    description: Faker::Games::Dota.quote,
    category: Faker::Games::WarhammerFantasy.faction
  )
end

puts "Done"
