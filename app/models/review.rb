class Review
  attr_accessor :customer, :restaurant, :content

  @@all = []
  ## full list of review objects

  def initialize(customer, restaurant)
    @customer = customer
    @restaurant = restaurant
    @content = nil
    @@all << self
  ## initializes with a customer and a restaurant
  ## content set to nil, will be created through Customer.add_review
  end

  def self.all
    @@all
  end
  ## returns @@all, which is array of all review objects

  def customer
    self.customer
  end
  ## returns the given review's customer object

  def restaurant
    self.restaurant
  end
  ## returns the given review's restaurant object

end
