puts "🌱 Seeding spices..."
# db/seeds.rb

# require 'faker'

# # Create Customers
# 5.times do
#   Customer.create(
#     name: Faker::Name.name,
#     email: Faker::Internet.email,
#     phone: Faker::PhoneNumber.phone_number,
#     address: Faker::Address.full_address
#   )
# end

# # Create Ingredients
# ingredients = ["Sugar", "Milk", "Coffee Beans", "Cocoa Powder", "Water"]
# ingredients.each do |ingredient|
#   Ingredient.create(
#     name: ingredient
#   )
# end

# # Create Drinks
# drinks = [
# {
# name: "Coffee",
# price: 3.50,
# size: "Small",
# image_url: "https://www.example.com/coffee.jpg",
# ingredients: [
#     Ingredient.find_by(name: "Sugar"),
#     Ingredient.find_by(name: "Milk"),
#     Ingredient.find_by(name: "Coffee Beans")
# ]
# },
# {
# name: "Hot Chocolate",
# price: 4.50,
# size: "Medium",
# image_url: "https://www.example.com/hot_chocolate.jpg",
# ingredients: [
#     Ingredient.find_by(name: "Sugar"),
#     Ingredient.find_by(name: "Milk"),
#     Ingredient.find_by(name: "Cocoa Powder")
# ]
# },
# {
# name: "Tea",
# price: 2.50,
# size: "Small",
# image_url: "https://www.example.com/tea.jpg",
# ingredients: [
#     Ingredient.find_by(name: "Sugar"),
#     Ingredient.find_by(name: "Water")
# ]
# }
# ]

# drinks.each do |drink|
# new_drink = Drink.create(
# name: drink[:name],
# price: drink[:price],
# size: drink[:size],
# image_url: drink[:image_url]
# )

# # drink[:ingredients].each do |ingredient|
# # DrinkIngredient.create(
# #     drink_: new_drink,
# #     ingredient: ingredient
# # )
# # end
#  end

DrinkIngredient.create(drink_id:1 ,ingredient_id:1)
DrinkIngredient.create(drink_id:2 ,ingredient_id:1)
DrinkIngredient.create(drink_id:3 ,ingredient_id:1)
DrinkIngredient.create(drink_id:4 ,ingredient_id:1) 
DrinkIngredient.create(drink_id:5 ,ingredient_id:7 )
DrinkIngredient.create(drink_id:6 ,ingredient_id:11 )
DrinkIngredient.create(drink_id:7 ,ingredient_id:8 )
DrinkIngredient.create(drink_id:8 ,ingredient_id:6 )
DrinkIngredient.create(drink_id:9 ,ingredient_id:9 )
DrinkIngredient.create(drink_id:10 ,ingredient_id:10 )
puts "✅ Done seeding!"
