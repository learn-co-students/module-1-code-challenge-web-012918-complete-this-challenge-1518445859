require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

randy = Customer.new('bill','jim')
sandy = Customer.new('jillian','donald')
papas = Restaurant.new('papas')
tacos = Restaurant.new('tacos')
review1 = Review.new(randy, tacos)
Pry.start


'hi'
