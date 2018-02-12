class Review
  ALL = []
  attr_accessor :customer, :restaurant, :review
  def initialize(customer, restaurant)
    @customer = customer
    @restaurant = restaurant
    ALL << self
  end

  def self.all
    ALL
  end

  def customer
    @customer
  end
  def restaurant
    @restaurant
  end
end
