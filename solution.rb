# Please copy/paste all three classes into this file to submit your solution!
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

  def self.find_by_name(full_name)
    all.find do |customer|
      customer.full_name == full_name
    end
  end

  def self.find_all_by_first_name(first_name)
    all.select do |customer|
      customer.first_name == first_name
    end
  end

  def self.all_names
    all.map { |customer| customer.full_name }
  end

  def add_review(restaurant, content)
    review = Review.new(self, restaurant, content)
  end

end

class Review
  attr_accessor :customer, :restaurant, :review
  @@all = []

  def initialize(customer, restaurant, content)
    @customer = customer
    @restaurant = restaurant
    @content = content
    @@all << self
  end

  def self.all
    @@all
  end

  def customer
    @customer
  end

  def restaurant
    @restaurant
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
    all.find do |restaurant|
      restaurant.name == name
    end
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def customers
    Review.all.select do |review|
      review.restaurant == self
    end
  end

end
