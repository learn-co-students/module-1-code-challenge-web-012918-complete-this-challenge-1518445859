require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

johnyork = Customer.new("John", "York")
custtwo = Customer.new("Customer", "Two")
johnsmith = Customer.new("John", "Smith")

rest1 = Restaurant.new("Rest1")
rest2 = Restaurant.new("Rest2")
rest3 = Restaurant.new("Rest3")
rest4 = Restaurant.new("Rest4")

johnyork.add_review(rest1, "jy review1")
johnyork.add_review(rest2, "jy review2")
johnyork.add_review(rest3, "jy review3")
custtwo.add_review(rest1, "custtwo rev1")
custtwo.add_review(rest2, "custtwo rev2")
johnsmith.add_review(rest1, "johnsmith rev1")


Pry.start
