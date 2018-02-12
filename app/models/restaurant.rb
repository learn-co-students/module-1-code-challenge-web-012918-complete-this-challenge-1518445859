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
    self.all.find{|restaurant| restaurant.name == name}
  end

  def reviews
    Review.all.map{|review| review.restaurant == self}
  end

  def reviews
    Review.all.map do |review|
      review.restaurant == self
      review.customer
    end
  end

end
