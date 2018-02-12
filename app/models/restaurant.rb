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
    found =
    all.find do |restaurant|
      restaurant.name.downcase == name.downcase
    end
    found ? found : "There is no restaurant with that name"
  end

  def reviews
    found =
    Review.all.select do |review|
      review.restaurant == self
    end
    found != [] ? found : "There are no reviews for this restuarant"
  end

  def customers
    reviews.kind_of?(Array) ?
    reviews.map do |self_reviews|
      self_reviews.customer
    end
    : "There are no reviews for this restaurant"
  end

end
