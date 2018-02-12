require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

dan = Customer.new("Dan", "Lee")
john = Customer.new("John", "Long")
susan = Customer.new("Susan", "Boyle")
susie = Customer.new("Susan", "Q")

momo = Restaurant.new("Momo")
fuku = Restaurant.new("Fuku")

momo_review1 = Review.new(dan, momo, "This place is good!")
momo_review2 = Review.new(john, momo, "Never coming back to this place ever again!")

dan.add_review(fuku, "This place's sandwich is spicy!")
susan.add_review(fuku, "I love Chang!")

Pry.start
