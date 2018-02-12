require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

sally = Customer.new("Sally", "Biggens")
roger = Customer.new("Roger", "Fey")
tony = Customer.new("Tony", "Tiger")
tony2 = Customer.new("Tony", "Tiger")
alice = Customer.new("Alice", "Wonderland")
alice2 = Customer.new("Alice", "Teacup")
alice3 = Customer.new("Alice", "Alan")

hatters= Restaurant.new("Hatter's Tea Party")
hatters2= Restaurant.new("Hatter's Tea Party")
sushi= Restaurant.new("Sushi Sushi")
checkered= Restaurant.new("Checkered Table")
hobbit= Restaurant.new("Hobbit Hole")
ocean= Restaurant.new("Ocean")


sally.add_review(hatters, "meh")
roger.add_review(hatters, "okay")
tony.add_review(hatters, "good")
alice.add_review(hatters, "like")
alice2.add_review(hatters, "love")
alice3.add_review(hatters, "what")

sally.add_review(sushi, "meh")
roger.add_review(sushi, "okay")
tony.add_review(sushi, "good")
alice.add_review(sushi, "like")
alice2.add_review(sushi, "love")
alice3.add_review(sushi, "what")


Pry.start
