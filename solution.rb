# Please copy/paste all three classes i
# into this file to submit your solution!
class Customer

  @@all = []
  @@all_names = []
  attr_accessor :first_name, :last_name


  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
    @@all_names << self.full_name
    @reviews = []
  end

  def self.all
    @@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.find_by_name(name)
    self.all.find {|customer_obj| customer_obj.n}
  end

  def self.all_names
    @@all_names
  end

  def add_review (restaurant, content)
  new_review = Review.new(restaurant, content)
  @reviews << new_review
  end




end


class Restaurant

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end



end

class Review

@@all = []

attr_accessor :customer, :restaurant, :content

  def initialize (customer, restaurant, content)
    @customer = customer
    @content = content
    @restaurant = restaurant
    @@all << self
  end

  def self.all
    @@all
  end

  def customer
    self.customer
  end

  def restaurant
    self.restaurant
  end


end
