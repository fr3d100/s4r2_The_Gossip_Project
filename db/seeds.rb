# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#On va utiliser la gem Faker
require 'faker'

#On vide les donées en base 
User.destroy_all
City.destroy_all

#Création de 10 villes
10.times do
	City.create(name: Faker::Address.city, zip_code: Faker::Address.zip_code)
end
puts "10 villes ont été crées"

#Création de 10 users
10.times do
	User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: "J'ai plein de Gossip à partgaer sur tout le monde, attention, le prochain est peut-être bien toi!", email: Faker::Internet.email, age: Faker::Number.between(7, 77).to_i, city: City.order("RANDOM()").first)
end 
puts "10 utilisateurs ont été créés"

#Création de 20 gossips
20.times do
	Gossip.create(title: Faker::Hipster.word , content: Faker::ChuckNorris.fact , user: User.order("RANDOM()").first)
end
puts "20 gossip ont été créés"