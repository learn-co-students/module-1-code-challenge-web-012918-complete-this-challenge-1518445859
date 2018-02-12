require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

customer1 = Customer.new("First1", "Last1")
customer2 = Customer.new("First1", "Last2")
customer3 = Customer.new("First1", "Last3")
customer4 = Customer.new("First4", "Last4")
customer5 = Customer.new("First5", "Last5")

restaurant1 = Restaurant.new("Restaurant1")
restaurant2 = Restaurant.new("Restaurant2")
restaurant3 = Restaurant.new("Restaurant3")
restaurant4 = Restaurant.new("Restaurant4")
restaurant5 = Restaurant.new("Restaurant5")

review1 = Review.new(customer1, restaurant1, "Review1")
review2 = Review.new(customer2, restaurant1, "Review2")
review3 = Review.new(customer3, restaurant1, "Review3")
review4 = Review.new(customer4, restaurant4, "Review4")
review5 = Review.new(customer5, restaurant5, "Review5")

Pry.start
