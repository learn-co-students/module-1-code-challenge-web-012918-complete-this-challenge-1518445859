require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#CUSTOMERS
paul_jones = Customer.new("Paul", "Jones")
paul_stone = Customer.new("Paul", "Stone")
paul_floor = Customer.new("Paul", "Floor")
johnny_frost = Customer.new("Johnny", "Frost")
tom_danza = Customer.new("Tom", "Danza")

###########################################################
#RESTAURANT
otto = Restaurant.new("Otto")
valley = Restaurant.new("Valley")
freeze = Restaurant.new("Freeze")

###########################################################
#REVIEWS

paul_jones_otto_review = Review.new(otto, paul_jones)
tom_danza_valley_review = Review.new(valley, tom_danza)
johnny_frost_otto_review = Review.new(otto, johnny_frost)
paul_jones_freeze_review = Review.new(freeze, paul_jones)




Pry.start
