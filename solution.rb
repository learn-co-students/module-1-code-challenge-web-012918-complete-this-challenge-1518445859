class Customer
  attr_accessor :first_name, :last_name

  @@all = []
  ## array of all customer objects

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end
  ## @@all is the array of all customer objects

  def self.find_by_name(name)
    @@all.find {|customer| customer.full_name == name}
  end
  ## searches list of all customers for FIRST result where
  ## the customer's full name matches the name being searched

  def self.find_all_by_first_name(first_name)
    @@all.select {|customer| customer.first_name == first_name}
  end
  ## searches list of all customers for ALL results where
  ## the customer's first name matches the first name being searched


  def self.all_names
    @@all.map {|customer| customer.full_name}
  end
  ## uses list of all customer objects and creates array of
  ## all customers' full names

  def add_review(restaurant, content)
    new_rev = Review.new(self, restaurant)
    new_rev.content = content
    new_rev
  end
  ## creates new review object with self as review's customer
  ## and input restaurant as review's restaurant
  ## sets new review's content to the content input
  ## returns new review

end

class Review
  attr_accessor :customer, :restaurant, :content

  @@all = []
  ## full list of review objects

  def initialize(customer, restaurant)
    @customer = customer
    @restaurant = restaurant
    @content = nil
    @@all << self
  ## initializes with a customer and a restaurant
  ## content set to nil, will be created through Customer.add_review
  end

  def self.all
    @@all
  end
  ## returns @@all, which is array of all review objects

  def customer
    self.customer
  end
  ## returns the given review's customer object

  def restaurant
    self.restaurant
  end
  ## returns the given review's restaurant object

end

class Restaurant
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end
  ## returns @@all, which is an array of all restaurant objects

  def find_by_name(name)
    @@all.find {|restaurant| restaurant.name == name}
  end
  ## searches array of all restaurant objects for FIRST result where
  ## restaurant's name matches the name being searched

  def reviews
    Review.all.select {|rev| rev.restaurant.name == self.name}
  end
  ## searches array of all review objects and returns an array
  ## of all review objects where the review's restaurant's name
  ## matches the name of the restaurant object that this method
  ## is being called on

  def customers
    self.reviews.map {|rev| rev.customer}
  end
  ## using the array of all review objects where the review's
  ## restaurant's name matches the name of the restaurant object
  ## that the .reviews is being called on, return an array of all
  ## the customers attached to those reviews

end
