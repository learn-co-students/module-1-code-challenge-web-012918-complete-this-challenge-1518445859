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

  def self.find_by_name(name)
    found =
    all.find do |customer|
      "#{customer.first_name.downcase} #{customer.last_name.downcase}" == name.downcase
    end 
    found ? found : "There are no customers with that full name"
  end

  def self.find_all_by_first_name(name)
    found = 
    all.select do |customer|
      "#{customer.first_name.downcase}" == name.downcase
    end
    found != [] ? found : "There are no customers with that first name"
  end

  def self.all_names
    found =
    all.map do |customer|
      "#{customer.first_name} #{customer.last_name}"
    end
    found != [] ? found : "No customers have been submitted"
  end

  def add_review(restaurant, content)
    review = Review.new(restaurant, content)
    review.customer = self
    "Review submitted."
  end

end
