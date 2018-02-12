class Restaurant
  attr_accessor :name

  def initialize(name)
    @name = name
    Review.new(customer: nil, restaurant: self, content: nil)
  end

  def self.all
    Review.allall.select {|review| review.restaurant != nil}.map {|review| review.restaurant}.uniq
  end

  def self.find_by_name(name)
    self.all.find {|restaurant| restaurant.name == name}
  end

  def reviews
    Review.all.select {|review| review.restaurant == self && review.content != nil}
  end

  def customers
    Review.all.select {|review| review.restaurant == self && review.customer != nil}.map {|review| review.customer}.uniq
  end
end

# Restaurant.all ok
#   returns an array of all restaurants
# Restaurant.find_by_name(name) ok
#   given a string of restaurant name, returns the first restaurant that matches
# Restaurant#reviews
#   returns an array of all reviews for that restaurant
# Restaurant#customers
#   should return all of the customers who have written reviews of that restaurant.
