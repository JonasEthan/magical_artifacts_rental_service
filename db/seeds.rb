# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

Artifact.delete_all
User.delete_all

CATEGORIES = [
  "Household", "Selfdefence(non-lethal)", "Selfdefence(lethal)", "Garden", "Construction", "Adventuring", "Cursed",
  "Learning", "Communication", "Traps", "Transportation", "Alchemie", "Music", "Other"
]

puts "Start seeding Users"
3.times do
  User.create(
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 8),
    user_name: Faker::Internet.username
  )
end
puts "End seeding Users"

puts "Start seeding Artifacts"
10.times do
  @cat = rand(0..13)
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
