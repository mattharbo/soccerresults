class Team

  attr_reader :teamname, :acronym, :city

  def initialize(attribute = {})
    @teamname = attribute[:teamname]
    @acronym = attribute[:acronym]
    @city = attribute[:city]
  end

end
