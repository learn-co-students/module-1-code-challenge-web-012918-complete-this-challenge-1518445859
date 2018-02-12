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

  def self.find_by_name(name) # given a string of a full name, returns the first customer whose full name matches
    all.find {|customer| customer.full_name == name}
  end

  def self.find_all_by_first_name(name)
    all.select {|customer| customer.first_name == name}
  end

  def self.all_names
    all.select {|customer| customer.full_name}.map {|customer| customer.full_name}
  end

  def add_review(restaurant, content) # given some content and a restaurant, creates a new review and associates it with that customer and that restaurant
    Review.new(self, restaurant, content)
  end


end
