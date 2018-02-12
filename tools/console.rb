require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

brooke = Customer.new("Brooke", "Yalof")
scarlett = Customer.new("Brooke", "Scarlett")
jordana = Customer.new("Jordana", "Graifman")
marco_polo = Restaurant.new("Marco Polo")
pintales = Restaurant.new("Pintales")
marc = Restaurant.new("Marco Polo")
review = Review.new("I like this restaurant", brooke, marco_polo)
review = Review.new("Yummy!", brooke, pintales)
review = Review.new("Ehh", jordana, pintales)
review = Review.new("Sorta good", scarlett, marco_polo)

Customer.find_by_name("Brooke Yalof")
Customer.find_all_by_first_name("Brooke")
Customer.all_names
brooke.add_review(pintales, "Best Pizza ever!")
scarlett.add_review(pintales, "Love")

Restaurant.find_by_name("Pintales")
pintales.reviews
pintales.customers
marco_polo.customers

Pry.start
