class Review

  attr_accessor :restaurant, :full_name

  @@all = []

  def initialize(restaurant, full_name)
    @restaurant = restaurant
    @full_name = full_name
    @@all << self
  end

  def self.all
    @@all
  end

  def customer
    # returns the customer for that given review
    reviews = Review.all.select {|review_obj|
      review_obj == self}
      reviews
  end

end
