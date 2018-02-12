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
    self.all.find do |restaurant|
      if restaurant.name == name
        restaurant
      end
    end
  end

  def reviews
    review_arr = []
    Review.all.each do |reviews|
      if self.name == reviews.restaurant.name
        review_arr << reviews.content
        # binding.pry
      end
    end
    review_arr
  end

  def customers
    Review.all.select do |reviews|
      if self.name == reviews.restaurant.name
        reviews.customer
      end
    end
  end


end
