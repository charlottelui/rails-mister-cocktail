# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'


puts 'clearing old ingredients'
Ingredient.destroy_all

puts 'creating ingredients'

ingredients_serialized = open("https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list").read
ingredients = JSON.parse(ingredients_serialized)


ingredients['drinks'].each do |ingredient|
  new_ingredient = Ingredient.new(name: ingredient.values.first)
  new_ingredient.save
end

puts "There are now #{Ingredient.count} ingredients.."
