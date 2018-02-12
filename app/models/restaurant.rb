class Restaurant
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.find_by_name(name)
    @@all.find do |restaurant|
      restaurant.name == name
    end
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def customers
    restaurants = Review.all.select do |review|
      review.restaurant == self
    end
    restaurants.map do |restaurant|
      restaurant.customer
    end
  end


  def self.all
    @@all
  end

end


# Restaurant.all
#  + returns an array of all restaurants
# + Restaurant.find_by_name(name)
#  + given a string of restaurant name,
#     returns the first restaurant that matches
# + Restaurant#reviews
#  + returns an array of all reviews for
#     that restaurant
# + Restaurant#customers
#  + should return all of the customers who
#     have written reviews of that restaurant.
