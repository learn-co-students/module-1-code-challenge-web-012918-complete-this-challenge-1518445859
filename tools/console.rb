require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

kevin = Customer.new("Kevin", "Baker")
max = Customer.new("Max", "Beavan")
kait = Customer.new("Kaitlin", "Sherman")
lib = Customer.new("Libby", "Schlutz")
nick = Customer.new("Nick", "Dykstra")
nick2 = Customer.new("Nick", "Nice")

ians = Restaurant.new("Ian's Pizza")
grandpas = Restaurant.new("Grandpa's Pizza")
tex_tubbs = Restaurant.new("Tex Tubbs Taco Palace")
montys = Restaurant.new("Monty's Diner")


r1 = kevin.add_review(ians, "If I'm craving pizza, I always go to Ian's! 10/10 *******")
r2 = kevin.add_review(montys, "Ok, coolest little diner around. You walk in and you feel like you're in the 1950's!")
r3 = max.add_review(montys, "I go here everyday for lunch and order three shakes and two burgers. I haven't been feeling well lately, but I haven't figured out why.")
r4 = lib.add_review(montys, "If you're vegan (like me), make sure to get the BLT with tofu bacon.")
r5 = nick.add_review(ians, "I grew up on the other side of town, and have never really understood why people like Ian's....")
r6 = max.add_review(montys, "Ok quick update. I think I'm going to have to change my order next time. The shakes are giving me brain freeze!")

Pry.start
