require_relative '../config/environment.rb'
require "pry"
def reload
  load 'config/environment.rb'
end

ryan = Customer.new("Ryan", "Farney")
ryanb = Customer.new("Ryan", "Boins")
connor = Customer.new("Con", "Cahy")

chilis = Restaurant.new("Chili's")
nobu = Restaurant.new("Nobu Nobu")
ihop = Restaurant.new("International House of Pancakes")


r1 = Review.new(ryan, chilis, "This is the best restaurant ever. The skillet con queso is so dank")
r2 = Review.new(connor, nobu, "Great place to bring LA girls... Little pricey")
r3 = Review.new(ryanb, chilis, "Friend, Ryan brought me here. Huge fan of the skillet")
r4 = Review.new(ryan, ihop, "The pancakes are delicious, but boyyy are they filling!")

binding.pry
"hi"
Pry.start
