class Customer
  attr_accessor :first_name, :last_name
  ALL = []
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    ALL << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    ALL
  end

  def self.find_by_name(name)
    Customer.all.find{|customer| customer.full_name == name}
  end

  def self.find_all_by_first_name(name)
    Customer.all.select{|customer| customer.first_name == name}
  end

  def self.all_names
    Customer.all.map{|customer| customer.full_name}
  end

  def add_review(restaurant, content)
    new_review = Review.new(content)
    new_review.restaurant = restaurant
    new_review.customer = self
  end


end

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
    Restaurant.all.find{|restaurant| restaurant.name == name}
  end

  def reviews
    Review.all.select{|review| review.restaurant == self}
  end

  def customers
    reviews.map{|review| review.customer}.uniq
  end

end


class Review
  attr_accessor :restaurant, :customer, :content
  ALL = []
  def initialize(content)
    @content = content
    ALL << self
  end

  def self.all
    ALL
  end

end
