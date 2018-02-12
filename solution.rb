# Please copy/paste all three classes into this file to submit your solution!
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

  def self.find_by_name(name)
    # given a string of restaurant name, returns the first restaurant that matches

    objects = Restaurant.all.select {|restaurant_obj|
      restaurant_obj.name == name}

      objects.find {|restaurant_obj| restaurant_obj.name}
  end

  def reviews
    # returns an array of all reviews for that restaurant
    objects = Review.all.select {|review_obj|
      binding.pry
      review_obj.restaurant == self}

      objects.map {|review_obj| review_obj.name}
  end

  def customer
    # should return all of the customers who have written reviews of that restaurant.
    objects = Review.all.select {|review_obj|
      review_obj.restaurant == self}

      objects.map {|review_obj|
        binding.pry
        review_obj.full_name}
  end

end

class Review

  attr_accessor :restaurant, :full_name

  @@all = []

  def initialize(restaurant, full_name)
    @restaurant = restaurant
    @full_name = full_name
    @@all << self
  end

  def self.all
    @@all
  end

  def customer
    # returns the customer for that given review
    reviews = Review.all.select {|review_obj|
      review_obj == self}
      reviews
  end

end


class Customer
  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def self.all
    @@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def customer_obj
    objects = Customer.all.select {|customer_obj|
      customer_obj.first_name == self}
  end

  def self.find_by_first_name(name)
    # given a string of a first name, returns an array containing
    # all customers with that first name
    objects = Customer.all.select {|customer_obj|
      customer_obj.first_name == name}

      objects.map {|customer_obj| customer_obj.first_name + " " + customer_obj.last_name}
  end

  def self.all_names
    # should return an array of all of the customer full names
    objects = Customer.all.select {|customer_obj|
      customer_obj}

      objects.map {|customer_obj| customer_obj.first_name + " " + customer_obj.last_name}
  end

  def add_review
    # given some content and a restaurant,
    # creates a new review and associates it with that customer and that restaurant

  end

end
