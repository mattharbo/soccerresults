class Formation

  attr_reader :team, :fixture, :type

  def initialize(team,fixture,type)
    @team, @fixture, @type = team,fixture,type
  end

end
