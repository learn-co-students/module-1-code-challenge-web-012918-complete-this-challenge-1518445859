class Review
  attr_accessor :restaurant, :customer, :content
  ALL = []
  def initialize(content)
    @content = content
    ALL << self
  end

  def self.all
    ALL
  end

end
