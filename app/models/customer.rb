class Customer
  attr_accessor :first_name, :last_name
  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @full_name = full_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)#full name string
    self.all.find do |customer|
      if name == customer.full_name
        customer
      end
    end
  end

  def self.find_all_by_first_name(name)#first name string
    self.all.select do |customer|
      if name == customer.first_name
        binding.pry
        customer
      end
    end
  end

  def self.all_names
    self.all.collect do |customer|
      customer.full_name
    end

  end

  def add_review(restaurant, content)
    Review.new(self, restaurant, content)
  end
end
