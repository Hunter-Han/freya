# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' } { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "deleting everthing"
Recipe.destroy_all
IngredientAtVendor.destroy_all
IngredientSeason.destroy_all
Ingredient.destroy_all
Review.destroy_all
FoodGroup.destroy_all
Vendor.destroy_all
User.destroy_all
County.destroy_all

Dir[File.join(Rails.root, 'db', 'seeds', '*.rb')].sort.each do |seed|
  load seed
end

