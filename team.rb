class Team

  attr_reader :teamname, :acronym, :city

  def initialize(attributes = {})
    @teamname = attributes[:teamname]
    @acronym = attributes[:acronym]
    @city = attributes[:city]
  end

end
