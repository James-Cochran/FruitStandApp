# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
fruit_stand = FruitStand.create!(name: "Frankie's Fruit Stand", number_of_employees: 5, in_stock: true)
fruit1 = fruit_stand.fruits.create!(name: "Apple", quantity: 10, is_citrus: false)
fruit2 = fruit_stand.fruits.create!(name: "Orange", quantity: 9, is_citrus: true)
fruit3 = fruit_stand.fruits.create!(name: "Banana", quantity: 8, is_citrus: false)
