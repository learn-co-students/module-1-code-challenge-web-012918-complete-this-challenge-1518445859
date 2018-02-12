# Please copy/paste all three classes into this file to submit your solution!
class Customer
  attr_accessor :first_name, :last_name, :reviews

@@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_review (restaurant, content)
    content.customer == self
    restaurant.customer == self
  end

  def reviews
Review.select.all{|rev| rev.customer == self}
  end

  def full_name
    "#{first_name} #{last_name}"
  end

def all_names
  @@all.select.all {|names| full_name }
end

def find_all_by_first_name (name)
  @@all.select.all {|names|name.scan == first_name }
end

def find_by_name (name)
  @@all.find.all {|names| names == name}
end

end




class Review
  attr_accessor :customer, :restaurant

@@all = []

  def initialize (comment)
    @comment = comment
    @@all << self
  end

  def self.all
    @@all
  end

def customer
Customer.select.all {|cust| cust == review}
end

def restaurant
  Restaurant.select.all {|rest| rest == review}
end

end










class Restaurant
  attr_accessor :name, :reviews, :customers

@@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end


  def reviews
    Review.select.all{|rev| rev.restaurant == self}
  end

  def find_by_name(name)
    @@all.find.all {|names| names == name}
  end

#def customers
#  @@all.select.all {|cust| }

end
