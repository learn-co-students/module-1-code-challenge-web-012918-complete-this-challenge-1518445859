require_relative '../config/environment.rb'
require 'pry'

def reload
  load 'config/environment.rb'
end

# Pry.start

customer1 = Customer.new("Adam", "First")
customer2 = Customer.new("Beth", "Second")
customer3 = Customer.new("Chris", "Third")
customer4 = Customer.new("Adam", "Fourth")

rest1 = Restaurant.new("Rest1")
rest2 = Restaurant.new("Rest2")
rest3 = Restaurant.new("Rest3")
rest4 = Restaurant.new("Rest4")

review1 = Review.new(customer: customer1, restaurant: rest1, content: "good")
review2 = Review.new(customer: customer1, restaurant: rest2, content: "very good")
review3 = Review.new(customer: customer1, restaurant: rest3, content: "wow much good")
review4 = Review.new(customer: customer2, restaurant: rest2, content: "nice")
review5 = Review.new(customer: customer2, restaurant: rest3, content: "very nice")
review6 = Review.new(customer: customer3, restaurant: rest3, content: "bad")
review7 = Review.new(customer: customer1, restaurant: rest3, content: "bad this time")

binding.pry
'hi'

#restaurant has many reviews
#customer has many reviews
#review belongs to many users and restaurantss
