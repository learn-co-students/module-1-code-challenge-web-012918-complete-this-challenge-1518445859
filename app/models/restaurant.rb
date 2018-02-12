class Restaurant
  #has many reviews
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
    Restaurant.all.find do |restaurant|
      restaurant.name == name
    end
  end

  def reviews
    # returns an array of all reviews for that restaurant
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def customers
    # should return all of the customers who have
    # written reviews of that restaurant.
    reviews = self.reviews
    reviews.map do |review|
      review.customer
    end.uniq
  end

  #*********EXTRA METHODS*********

  def respond_to_review(review, response)
    if review.restaurant == self
      review.response = "#{review.customer.first_name}: #{response}"
    end
  end

end
