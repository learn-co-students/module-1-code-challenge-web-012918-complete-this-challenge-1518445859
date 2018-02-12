class Customer
  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def self.all
    @@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def customer_obj
    objects = Customer.all.select {|customer_obj|
      customer_obj.first_name == self}
  end

  def self.find_by_first_name(name)
    # given a string of a first name, returns an array containing
    # all customers with that first name
    objects = Customer.all.select {|customer_obj|
      customer_obj.first_name == name}

      objects.map {|customer_obj| customer_obj.first_name + " " + customer_obj.last_name}
  end

  def self.all_names
    # should return an array of all of the customer full names
    objects = Customer.all.select {|customer_obj|
      customer_obj}

      objects.map {|customer_obj| customer_obj.first_name + " " + customer_obj.last_name}
  end

  def add_review
    # given some content and a restaurant, 
    # creates a new review and associates it with that customer and that restaurant

  end

end
