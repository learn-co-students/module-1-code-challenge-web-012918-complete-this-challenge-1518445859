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
  ## returns @@all, which is an array of all restaurant objects

  def find_by_name(name)
    @@all.find {|restaurant| restaurant.name == name}
  end
  ## searches array of all restaurant objects for FIRST result where
  ## restaurant's name matches the name being searched

  def reviews
    Review.all.select {|rev| rev.restaurant.name == self.name}
  end
  ## searches array of all review objects and returns an array
  ## of all review objects where the review's restaurant's name
  ## matches the name of the restaurant object that this method
  ## is being called on

  def customers
    self.reviews.map {|rev| rev.customer}
  end
  ## using the array of all review objects where the review's
  ## restaurant's name matches the name of the restaurant object
  ## that the .reviews is being called on, return an array of all
  ## the customers attached to those reviews

end
