class Customer
  attr_accessor :first_name, :last_name, :customer

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name

    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.find_by_name(name)
    names = name.split(' ')

    @@all.select do |customer|
      customer.first_name == names[0] && customer.last_name == names[1]
    end
  end

  def self.find_all_by_first_name(name)
    @@all.select do |customer|
      customer.first_name == name
    end
  end

  def add_review(restaurant, content)
    Review.new(self, restaurant, content)
  end

  def self.all_names
    arr = []
    @@all.each do |customer|
      arr.push(customer.full_name)
    end
    arr
  end


  def self.all
    @@all
  end

end

# Customer.all
#   + should return all of the customers
# + Customer.find_by_name(name)
#   + given a string of a full name,
      # returns the first customer whose full
      # name matches
# + Customer.find_all_by_first_name(name)
#   + given a string of a first name,
      # returns an array containing all
      # customers with that first name
# + Customer.all_names
#   + should return an array of all of
      # the customer full names
# + Customer#add_review(restaurant,
    # content)
#   + given some content and a
    # restaurant, creates a new review
    # and associates it with that
    # customer and that restaurant
