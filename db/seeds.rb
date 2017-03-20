# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


People.find_or_create_by(name: "Sean", favoriteCity: "New York")
People.find_or_create_by(name: "Sean Carter", favoriteCity: "Los Angeles")
People.find_or_create_by(name: "Jay-Z", favoriteCity: "Miami")
People.find_or_create_by(name: "Jigga", favoriteCity: "Chicago")
People.find_or_create_by(name: "HOV", favoriteCity: "Detroit")
People.find_or_create_by(name: "Hova", favoriteCity: "Washington DC")
People.find_or_create_by(name: "Beyonce's Husband", favoriteCity: "Houston")
People.find_or_create_by(name: "Blue Ivy's Dad", favoriteCity: "New Orleans")
People.find_or_create_by(name: "Jazzy", favoriteCity: "San Francisco")
People.find_or_create_by(name: "J and Z train rep", favoriteCity: "New York")
