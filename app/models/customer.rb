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

  def self.find_by_name(name)
    name = name.split(" ")
    first = name[0]
    last = name[1]
    Customer.all.find {|customer| customer.first_name == first && customer.last_name == last}
  end

  def self.find_all_by_first_name(name)
    Customer.all.select{|customer| customer.first_name == name}
  end

  def self.all_names
    Customer.all.map {|customer| "#{customer.first_name} #{customer.last_name}"}
  end

  def add_review(restaurant, content)
    Review.new(content, self, restaurant)
  end
end
