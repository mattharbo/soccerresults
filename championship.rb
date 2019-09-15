class Championship

  attr_reader :name, :level, :country

  def initialize(attributes = {})
    @name = attributes[:name]
    @level = attributes[:level]
    @country = attributes[:country]
  end

end
