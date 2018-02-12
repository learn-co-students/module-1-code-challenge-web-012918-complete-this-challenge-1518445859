require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

customer1 = Customer.new("fred", "smith")
customer2 = Customer.new("frank", "ohara")
gladys = Restaurant.new("gladys")
chivala = Restaurant.new("chivala")

Pry.start
