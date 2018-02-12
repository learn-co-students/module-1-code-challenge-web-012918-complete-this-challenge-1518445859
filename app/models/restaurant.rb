class Restaurant
  attr_accessor :name
  ALL = []
  def initialize(name)
    @name = name
    ALL << self

  end

  def self.all
    ALL
  end

  def self.find_by_name(name)
    self.all.find do |restaurants|
      restaurants.name = name
    end
  end

  def reviews
    Review.all.select do |review|
      review.restaurant.name == self.name
    end.map {|reviews| reviews.review}
  end

  def customers
    Review.all.select do |review|
      review.restaurant.name == self.name
    end.map {|reviews| reviews.customer}
  end
end
