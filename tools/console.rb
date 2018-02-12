require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
###########People
rick = Customer.new("Rick", "Nilon")
matt = Customer.new("Matt", "M")
trist = Customer.new("Trist", "B")
rickr = Customer.new("Rick", "R")
##########Reviews
fish = Restaurant.new("Fishermans Catch")

##########Adding Reviews
rick.add_review(fish, "Terrible")
matt.add_review(fish, "It was awful")
trist.add_review(fish, "I dont like fish")


Customer.find_by_name("Rick Nilon")
Customer.find_all_by_first_name("Rick")

Restaurant.find_by_name("Fishermans Catch")
Pry.start
