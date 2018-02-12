class Review
  #join table between Restaurant and Customer
  attr_accessor :restaurant, :customer, :content, :response
  @@all = []

  def initialize(restaurant, content, customer)
    @restaurant = restaurant
    @customer = customer
    @content = content
    @@all << self
  end

  def self.all
    @@all
  end
end
