# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Food.create(name: 'Burger', category: 'food', description: 'An American classic burger with double beef and cheese', price: '25000.0')
Food.create(name: 'Pizza', category: 'food', description: 'Italian cuisiene for food hunter, various topping selection from pepperoni to cheese', price: '80000.0')
Food.create(name: 'Coke', category: 'beverage', description: 'Industrial coke, coke just like anywhere else', price: '15000.0')