# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

Booking.delete_all
Artifact.delete_all
User.delete_all

CATEGORIES = [
  "Alchemy", "Black Magic", "Fortune-telling", "Superpower", "Weapon", "Other"
]

puts "Start seeding Users"
  User.create(
    email: "testtest@test.com",
    password: "123456",
    user_name: "TestDummy"
  )
puts "End seeding Users"

puts "Start seeding Artifacts"
10.times do
  @cat = rand(0..5)
  Artifact.create(
    user_id: User.all.sample.id,
    price: Faker::Number.number(digits: 3),
    name: Faker::Games::Dota.item,
    small_description: Faker::Games::DnD.melee_weapon,
    description: Faker::Lorem.paragraph,
    category: CATEGORIES[@cat]
  )
end

puts "Done"
