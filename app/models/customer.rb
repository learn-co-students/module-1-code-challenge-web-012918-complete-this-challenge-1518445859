# class Customer
#   attr_accessor :first_name, :last_name
#   @@all = []
#   def initialize(first_name, last_name)
#     @first_name = first_name
#     @last_name  = last_name
#     @@all << self
#   end
#
#   def full_name
#     "#{first_name} #{last_name}"
#   end
#
#   def self.all
#     @@all
#   end
#
#   def self.find_by_name (full_name)
#     @@all.find{|customer| customer.full_name == full_name}
#   end
#
#   def self.find_by_first_name(name)
#     @@all.select{|customer| customer.first_name == name}
#   end
#
#   def self.all_names
#     @@all.map{|customer| customer.full_name}
#   end
#
#   def add_review(restaurant, content)
#     Review.new(restaurant, self, content)
#   end
# end
