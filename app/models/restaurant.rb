class Restaurant
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
    all.select {|restaurant| restaurant.name == name}.first
  end

  def reviews # returns an array of all reviews for that restaurant
    Review.all.select {|review| review.restaurant == self}
  end

  def customers # should return all of the customers who have written reviews of that restaurant.
    Review.all.select {|review| review.customer}.map {|review| review.restaurant}
  end

end
