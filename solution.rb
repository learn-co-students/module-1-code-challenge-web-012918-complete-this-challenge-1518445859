class Customer

  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    found =
    all.find do |customer|
      "#{customer.first_name.downcase} #{customer.last_name.downcase}" == name.downcase
    end 
    found ? found : "There are no customers with that full name"
  end

  def self.find_all_by_first_name(name)
    found = 
    all.select do |customer|
      "#{customer.first_name.downcase}" == name.downcase
    end
    found != [] ? found : "There are no customers with that first name"
  end

  def self.all_names
    found =
    all.map do |customer|
      "#{customer.first_name} #{customer.last_name}"
    end
    found != [] ? found : "No customers have been submitted"
  end

  def add_review(restaurant, content)
    review = Review.new(restaurant, content)
    review.customer = self
    "Review submitted."
  end

end

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

class Review

  attr_accessor :customer, :restaurant, :content

  @@all = []

  def initialize(restaurant, content)
    @restaurant = restaurant
    @content = content
    @@all << self
  end

  def self.all
    @@all
  end
  
end

