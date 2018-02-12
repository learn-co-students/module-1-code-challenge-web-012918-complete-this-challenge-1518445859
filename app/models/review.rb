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

# Review.all
#   + returns all of the reviews
# + Review#customer
#   + returns the customer for that
#   given review
# + Review#restaurant
#   + returns the restaurant for that
#   given review
