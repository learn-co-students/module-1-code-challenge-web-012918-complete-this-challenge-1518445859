class Customer
  #has many reviews
  attr_accessor :first_name, :last_name
  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end
  def self.all
    # should return all of the customers
    @@all
  end

  def self.find_by_name(name)
    # given a string of a full name,
    # returns the first customer whose full name matches
    Customer.all.find do |customer|
      customer.full_name == name
    end
  end

  def self.find_all_by_first_name(name)
    # given a string of a first name,
    # returns an array containing all customers with that first name
    Customer.all.find_all do |customer|
      customer.first_name == name
    end
  end

  def self.all_names
    # should return an array of all of the customer full names
    Customer.all.map do |customer|
      customer.full_name
    end
  end

  def add_review(restaurant, content)
    # given some content and a restaurant,
    # creates a new review and associates it
    # with that customer and that restaurant
    review = Review.new(restaurant, content, self)
  end

  #*********EXTRA METHODS*********

  def find_new_restaurants
    #finds all restaurants that the customer has not yet reviewed
    Restaurant.all.reject do |restaurant|
      restaurant.customers.include? self
    end
  end

  def reviews
    # returns all reviews from customer
    Review.all.select do |review|
      review.customer == self
    end
  end

  def find_favorite_restaurant
    #finds the restaurant the customer has reviewed the most
    restaurants = Hash.new(0)

    self.reviews.map {|review| restaurants[review.restaurant] +=1}
    restaurants.sort_by {|restaurant, count| count}.last[0]
  end

end
