class Restaurant
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    all.find{|restaurant|
      restaurant.name == name
    }
  end

  def reviews
    Review.all.select{|review|
      review.restaurant == self
    }
  end

  def customers
    reviews.map{|review|
      review.customer
    }
  end

end
