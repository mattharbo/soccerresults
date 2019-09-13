class Player

  attr_reader :name, :surname, :team

  def initialize(attribute = {})
    @name = attribute[:name]
    @surname = attribute[:surname]
  end

  def add_team(team)
    @team = team
  end

end
