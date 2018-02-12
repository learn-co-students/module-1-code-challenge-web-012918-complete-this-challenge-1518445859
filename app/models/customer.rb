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
