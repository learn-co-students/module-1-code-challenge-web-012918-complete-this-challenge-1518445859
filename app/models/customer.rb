require 'pry'
class Customer
  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name

  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    Review.all.map do |reviews|
      reviews.customer
    end
  end

  def self.find_by_name(name)

    split_names = name.split
    first_name = split_names[0].strip
    last_name = split_names[1].strip
    found_name = self.all.find do |reviews|
      # binding.pry
      reviews.first_name == first_name && reviews.last_name == last_name
    end
  end

  def self.find_all_by_first_name(name)
    self.all.select do |reviews|
      reviews.first_name == name
    end.map {|customer| customer}
  end

  def self.all_names
    self.all.map do |reviews|
      reviews.first_name + " " + reviews.last_name
    end
  end

  def add_review(restaurant, content)
    new = Review.new(self, restaurant)
    new.review = content
  end





end
