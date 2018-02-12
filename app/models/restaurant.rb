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
