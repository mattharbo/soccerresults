class Stadium

  attr_reader :name, :town

  def initialize(attributes = {})
    @name = attributes[:name]
    @town = attributes[:town]
  end

end
