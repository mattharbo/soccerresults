class Player

  attr_reader :name, :surname, :team

  def initialize(attributes = {})
    @name = attributes[:name]
    @surname = attributes[:surname]
  end

  def change_team(team)
    @team = team
  end

end
