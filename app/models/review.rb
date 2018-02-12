class Review
  attr_accessor :customer, :restaurant, :content

  @@all = []

  def initialize(content, customer, restaurant)
    @customer = customer
    @restaurant = restaurant
    @content = content
    @@all << self
  end

  def self.all
    @@all
  end

end
