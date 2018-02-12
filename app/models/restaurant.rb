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
    Restaurant.all.find {|restaurant| restaurant.name == name}
  end

  def reviews
    Review.all.select {|review| review.restaurant == self}.map {|review| review.review_content}
  end

  def customers
    Review.all.select {|review| review.restaurant == self}.map {|review| review.customer}.uniq
  end

end
