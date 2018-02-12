class Review

  attr_accessor :restaurant, :content, :customer
  @@all = []

  def initialize(content, restaurant, customer)
    @content = content
    @restaurant = restaurant
    @customer = customer
    @@all << self
  end

  def self.all
    @@all
  end

end
