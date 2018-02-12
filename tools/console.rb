require_relative '../config/environment.rb'
require 'pry'

def reload
  load 'config/environment.rb'
end

matt = Customer.new("Matt", "Linford")
laura = Customer.new("Laura", "Kim")
chris = Customer.new("Chris", "Diep")
chris_pine = Customer.new("Chris", "Pine")
dominoes = Restaurant.new("Dominoes")
chipotle = Restaurant.new("Chipotle")
mcdonalds = Restaurant.new("McDonalds")
review1 = Review.new(matt, dominoes, "Great!" )
review2 = Review.new(matt, mcdonalds, "Fantastic")
review3 = Review.new(laura, chipotle, "Perfect")
review4 = Review.new(chris, chipotle, "Mmm Mmm good")
review5 = Review.new(chris_pine, chipotle, "Food poisoning")

Pry.start
