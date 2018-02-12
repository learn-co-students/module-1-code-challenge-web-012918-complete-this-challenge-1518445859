class Customer
  attr_accessor :first_name, :last_name

  @@all = []
  ## array of all customer objects

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
  ## @@all is the array of all customer objects

  def self.find_by_name(name)
    @@all.find {|customer| customer.full_name == name}
  end
  ## searches list of all customers for FIRST result where
  ## the customer's full name matches the name being searched

  def self.find_all_by_first_name(first_name)
    @@all.select {|customer| customer.first_name == first_name}
  end
  ## searches list of all customers for ALL results where
  ## the customer's first name matches the first name being searched


  def self.all_names
    @@all.map {|customer| customer.full_name}
  end
  ## uses list of all customer objects and creates array of
  ## all customers' full names

  def add_review(restaurant, content)
    new_rev = Review.new(self, restaurant)
    new_rev.content = content
    new_rev
  end
  ## creates new review object with self as review's customer
  ## and input restaurant as review's restaurant
  ## sets new review's content to the content input
  ## returns new review

end
