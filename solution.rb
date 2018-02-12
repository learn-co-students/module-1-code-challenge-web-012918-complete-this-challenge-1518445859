# Please copy/paste all three classes into this file to submit your solution!
class Review

  attr_accessor :content

  @@all = []

  def initialize(customer, restaurant, content)
    @customer = customer
    @restaurant = restaurant
    @content = content

    @@all << self
  end

  def customer
    me = @@all.select do |obj|
      obj == self
    end
    # self.customer

  end

  def restaurant
    @@all.select do |obj|
      obj == self
    end
    # self.restaurant
  end

  def self.all
    @@all
  end

end


class Customer
  attr_accessor :first_name, :last_name, :customer

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name

    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.find_by_name(name)
    names = name.split(' ')

    @@all.select do |customer|
      customer.first_name == names[0] && customer.last_name == names[1]
    end
  end

  def self.find_all_by_first_name(name)
    @@all.select do |customer|
      customer.first_name == name
    end
  end

  def add_review(restaurant, content)
    Review.new(self, restaurant, content)
  end

  def self.all_names
    arr = []
    @@all.each do |customer|
      arr.push(customer.full_name)
    end
    arr
  end


  def self.all
    @@all
  end

end


class Restaurant
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.find_by_name(name)
    @@all.find do |restaurant|
      restaurant.name == name
    end
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def customers
    restaurants = Review.all.select do |review|
      review.restaurant == self
    end
    restaurants.map do |restaurant|
      restaurant.customer
    end
  end


  def self.all
    @@all
  end

end
