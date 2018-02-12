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
