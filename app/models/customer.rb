class Customer
  attr_accessor :first_name, :last_name, :reviews

@@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_review (restaurant, content)
    content.customer == self
    restaurant.customer == self
  end

  def reviews
Review.select.all{|rev| rev.customer == self}
  end

  def full_name
    "#{first_name} #{last_name}"
  end

def all_names
  @@all.select.all {|names| full_name }
end

def find_all_by_first_name (name)
  @@all.select.all {|names|name.scan == first_name }
end

def find_by_name (name)
  @@all.find.all {|names| names == name}
end

end
