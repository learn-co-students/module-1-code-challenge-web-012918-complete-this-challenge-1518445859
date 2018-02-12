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
