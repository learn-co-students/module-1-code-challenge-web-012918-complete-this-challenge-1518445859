require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

john = Customer.new("John", "Doe")
bob = Customer.new("Bob", "Smith")
jack = Customer.new("Jack", "Johnson")
john2 = Customer.new("John", "Doe")
bob2 = Customer.new("Bob", "Williams")
jack2 = Customer.new("Jack", "Johns")
meat = Restaurant.new("Meat Restaurant")
dairy = Restaurant.new("Dairy Restaurant")
vegan = Restaurant.new("Vegan Restaurant")
meat2 = Restaurant.new("Meat Restaurant")
john.add_review(meat, "Love this place!")
bob.add_review(meat, "So yum!!")
john2.add_review(meat, "Great food!!")
bob.add_review(dairy, "Loved it!")
john.add_review(dairy, "A delight")
john2.add_review(dairy, "Tasty")
jack.add_review(dairy, "Scrumptious!")
jack2.add_review(dairy, "Amazing restaurant.")
john2.add_review(vegan, "Good")
john2.add_review(meat2, "Great")
Pry.start
