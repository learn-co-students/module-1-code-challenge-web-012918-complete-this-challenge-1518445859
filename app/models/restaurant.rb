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
    # given a string of restaurant name, returns the first restaurant that matches

    objects = Restaurant.all.select {|restaurant_obj|
      restaurant_obj.name == name}

      objects.find {|restaurant_obj| restaurant_obj.name}
  end

  def reviews
    # returns an array of all reviews for that restaurant
    objects = Review.all.select {|review_obj|
      binding.pry
      review_obj.restaurant == self}

      objects.map {|review_obj| review_obj.name}
  end

  def customer
    # should return all of the customers who have written reviews of that restaurant.
    objects = Review.all.select {|review_obj|
      review_obj.restaurant == self}

      objects.map {|review_obj|
        binding.pry
        review_obj.full_name}
  end

end
