require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

scott = Customer.new('Scott', 'Burack')
ryan = Customer.new('Ryan', 'Sica')

ginos = Restaurant.new('Ginos')
hooters = Restaurant.new('Hooters')

Pry.start
