require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


melissa = Customer.new("melissa", "sames")
other_melissa = Customer.new("melissa", "n")
max = Customer.new("max", "taylor")

chilis = Restaurant.new("chilis")
olive_garden = Restaurant.new("olive garden")

rev1 = Review.new(chilis, "blah", melissa)
rev2 = Review.new(olive_garden, "blah", other_melissa)


Pry.start
