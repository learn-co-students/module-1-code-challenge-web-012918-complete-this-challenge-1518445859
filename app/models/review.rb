class Review

  attr_accessor :review_content, :customer, :restaurant
  @@all = []

  def initialize (review_content, customer, restaurant)
    @review_content = review_content
    @customer = customer
    @restaurant = restaurant
    @@all << self
  end

  def self.all
    @@all
  end

end
