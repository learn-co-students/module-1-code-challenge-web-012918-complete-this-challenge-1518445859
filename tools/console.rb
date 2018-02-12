require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


luigis = Restaurant.new("luigis")
marios = Restaurant.new("marios")
jairo = Customer.new("jairo", "espinosa")
vash = Customer.new("vash", "wagner")
jairo.add_review(luigis, "I love their pizza")
vash.add_review(marios, "I love their pizza")
jairo.add_review(marios, "I hate this pizza, go to luigis")
vash.add_review(luigis, "marios is the better brother")
vash2i = Customer.new("vash","waf")

Pry.start
