# Please copy/paste all three classes into this file to submit your solution!
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
    self.all.find do |restaurant|
      if restaurant.name == name
        restaurant
      end
    end
  end

  def reviews
    review_arr = []
    Review.all.each do |reviews|
      if self.name == reviews.restaurant.name
        review_arr << reviews.content
        # binding.pry
      end
    end
    review_arr
  end

  def customers
    Review.all.select do |reviews|
      if self.name == reviews.restaurant.name
        reviews.customer
      end
    end
  end


end

######################

class Customer
  attr_accessor :first_name, :last_name
  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @full_name = full_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)#full name string
    self.all.find do |customer|
      if name == customer.full_name
        customer
      end
    end
  end

  def self.find_all_by_first_name(name)#first name string
    self.all.select do |customer|
      if name == customer.first_name
        binding.pry
        customer
      end
    end
  end

  def self.all_names
    self.all.collect do |customer|
      customer.full_name
    end

  end

  def add_review(restaurant, content)
    Review.new(self, restaurant, content)
  end
end


######################

class Review
  attr_accessor :customer, :restaurant, :content
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
    Review.all.find do |review|
      if self.content == review
        review
      end
    end
  end

  def restaurant

  end

end
