# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "destroying existing records..."
Maxisol.destroy_all

puts "destroying existing records DONE"

puts "creating Maxisol account ..."

maxisol = Maxisol.create(email: "contact.maxisol@gmail.com", password: "9id4s")

puts "maxisol account DONE ..."

