# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' } { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

counties_array = %w[Bedfordshire Berkshire Buckinghamshire Cambridgeshire Cheshire
  Cornwall Cumberland Derbyshire Devon Dorset County Durham Essex Gloucestershire
  Hampshire Herefordshire Hertfordshire Huntingdonshire Kent Lancashire Leicestershire
  Lincolnshire Middlesex Norfolk Northamptonshire Northumberland Nottinghamshire
  Oxfordshire Rutland Shropshire Somerset Staffordshire Suffolk Surrey Sussex
  Warwickshire Westmorland Wiltshire Worcestershire Yorkshire]

counties_array.each do |county|
  County.create!(name: county)
end

vegetable = FoodGroup.create!(name: "Vegetable")
fruit = FoodGroup.create!(name: "Fruit")
fish = FoodGroup.create!(name: "Fish")
meat = FoodGroup.create!(name: "Meat")

#10 x vegetables

# 10 x fish/shellfish - mackerel,

mackerel = Ingredient.new(
  food_group: fish,
  name: "Mackerel"
  )

mackerel.remote_background_picture_url = "http"
mackerel.remote_thumbnail_picture_url = "http"

# 10 x meat - pheasants, venison, beef, pigeon, rabbit, lamb,

# 10 x fruit



# 10 x fishmongers

# 20 x farmshops

# local meat
