# class Restaurant
#   attr_accessor :name
#   @@all = []
#   def initialize(name)
#     @name = name
#     @@all << self
#   end
#
#   def self.all
#     @@all
#   end
#
#   def self.find_by_name(name)
#     @@all.find{|rest| rest.name == name}
#   end
#
#   def reviews
#     Review.all.select{|reviews| reviews.restaurant == self}
#   end
#
#   def customers
#     Review.all.select{|reviews| reviews.restaurant == self}.map{|review| review.customer}
#   end
# end
