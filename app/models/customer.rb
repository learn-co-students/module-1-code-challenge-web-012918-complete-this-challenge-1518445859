class Customer

  @@all = []
  @@all_names = []
  attr_accessor :first_name, :last_name


  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
    @@all_names << self.full_name
    @reviews = []
  end

  def self.all
    @@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.find_by_name(name)
    self.all.find {|customer_obj| customer_obj.n}
  end

  def self.all_names
    @@all_names
  end

  def add_review (restaurant, content)
  new_review = Review.new(restaurant, content)
  @reviews << new_review
  end




end
