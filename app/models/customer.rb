class Customer
  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    Review.new(customer: self, restaurant: nil, content: nil)
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    Review.allall.map {|review| review.customer}.uniq
  end

  def self.find_by_name(first_name, last_name)
    self.all.find {|customer| customer.first_name == first_name && customer.last_name == last_name}
  end

  def self.find_all_by_first_name(first_name)
    self.all.select {|customer| customer.first_name == first_name}
  end

  def self.all_names
    self.all.map {|customer| customer.full_name}.uniq
  end

  def add_review(restaurant, content)
    Review.new(customer: self, restaurant: restaurant, content: content)
  end
end

# Customer.all ok
#   should return all of the customers
# Customer.find_by_name(name) ok
#   given a string of a full name, returns the first customer whose full name matches
# Customer.find_all_by_first_name(name) ok
#   given a string of a first name, returns an array containing all customers with that first name
# Customer.all_names ok
#   should return an array of all of the customer full names
# Customer#add_review(restaurant, content) ok
#   given some content and a restaurant, creates a new review and associates it with that customer and that restaurant
