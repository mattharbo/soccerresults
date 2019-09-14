class Event

  attr_reader :game, :type, :player, :team, :minute, :second_player, :xcoord, :ycoord

  def initialize(game, type, player, team, attributes = {}, player2)
    @game = game
    @type = type
    @player = player
    @team = team
    @minute = attributes[:minute]

    if @type.name == "Goal"
      @second_player = player2
      @xcoord = attributes[:xcoord]
      @ycoord = attributes[:ycoord]
    else
      @second_player = player2
    end
  end

end
