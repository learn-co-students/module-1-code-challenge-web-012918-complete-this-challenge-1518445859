require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

gillies = Restaurant.new("gillies")
bollos = Restaurant.new("bollos")
sharkeys = Restaurant.new("sharkeys")
cellar = Restaurant.new("cellar")

chris = Customer.new("Chris", "piatt")
mel = Customer.new("Melissa", "nock")
michelle = Customer.new("Michelle", "yancey")
james = Customer.new("james", "deykes")
jim = Customer.new("james", "nock")

chris_rev = chris.add_review(gillies, "yum")
mel_rev = mel.add_review(bollos, "coffeeeeeee")
michelle_rev = michelle.add_review(sharkeys, "meh")
james_rev = james.add_review(cellar, "tasty")

Pry.start
