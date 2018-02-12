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

  def self.find_by_name(fullname)
    self.all.find {|c| c.full_name == fullname}
  end

  def self.find_all_by_first_name(firstname)
    self.all.select {|c| c.first_name == firstname}
  end

  def self.all_names
    self.all.map {|customer| customer.full_name}
  end

  def add_review(restaurant, content)
    Review.new(content, self, restaurant)
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
    self.all.find {|rest| rest.name == name}
  end

  def reviews
    Review.all.select {|rev| rev.restaurant == self}
  end

  def customers
    self.reviews.map {|rev| rev.customer}
  end

end


class Review
  attr_accessor :customer, :restaurant, :content

  @@all = []

  def initialize(content, customer, restaurant)
    @customer = customer
    @restaurant = restaurant
    @content = content
    @@all << self
  end

  def self.all
    @@all
  end

end
