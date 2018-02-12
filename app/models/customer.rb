class Customer
  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(full_name)
    split_name = full_name.split(' ')
    self.all.find{|customer| customer.first_name == split_name[0] && customer.last_name == split_name[1]}
  end

  def self.find_by_first_name(first_name)
    self.all.select{|customer| customer.first_name == first_name}
  end

  def self.all_names
    full_names = []
    self.all.map do |customer|
      full_names << "#{customer.first_name} #{customer.last_name}"
    end
    full_names
  end

  def add_review(restaurant, content)
    Review.new(restaurant, content, self)
  end


end
