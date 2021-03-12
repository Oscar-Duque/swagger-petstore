# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

puts 'Seeding the database'
for i in 0...300
  pet = Pet.new(name: Faker::Movies::StarWars.character, tag: Faker::Movies::StarWars.call_sign)
  pet.save!
  print '.'
end
puts 'Done! Created 300 instances of Dog'
