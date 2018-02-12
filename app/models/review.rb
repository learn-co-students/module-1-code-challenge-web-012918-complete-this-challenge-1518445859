
class Review

  attr_accessor :customer, :restaurant, :content
  @@all = []

  def initialize(customer:, restaurant:, content:)
    @customer = customer
    @restaurant = restaurant
    @content = content
    @@all << self
  end

  def self.all
    @@all.select {|review| review.restaurant != nil || review.content != nil}
  end

  def self.allall
    @@all
  end
end

# Review.all ok
#   returns all of the reviews
# Review#customer ok
#   returns the customer for that given review
# Review#restaurant ok
#   returns the restaurant for that given review
