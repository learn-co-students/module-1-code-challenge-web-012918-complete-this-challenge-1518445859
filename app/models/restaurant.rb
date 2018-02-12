class Restaurant
  attr_accessor :name
  @@all_restaurants = []

  def initialize(name)
    @name = name
    @@all_restaurants << self
  end

  def self.all
    @@all_restaurants
  end

  def self.find_by_name(name)
    @@all_restaurants.find { |restaurant| restaurant.name == name }
  end

  def reviews
    Review.all.select { |review| review.restaurant == self }
  end

  def customers
    reviews.map { |review| review.customer}
  end

end
