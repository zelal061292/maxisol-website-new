# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "destroying existing records..."
User.destroy_all
Post.destroy_all

puts "destroying existing records DONE"

puts "creating User as Maxisol account ..."

maxisol = User.create(email: "contact.maxisol@gmail.com", password: "123456")

puts "user maxisol account DONE ..."

post1 = Post.create(title: "Test 1", content: "blabla")

puts "post 1 creation DONE ..."

