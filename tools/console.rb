require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


customer1 = Customer.new("isaac", "chabon")
customer2 = Customer.new("donald", "trump")
customer3 = Customer.new("donald", "duck")

restaurant1 = Restaurant.new("McDonalds")
restaurant2 = Restaurant.new("Pizza")

customer1.add_review(restaurant1, "Gross")
customer1.add_review(restaurant2, "Yummy")
customer2.add_review(restaurant1, "Tasty")
customer3.add_review(restaurant2, "Delish")



Pry.start
