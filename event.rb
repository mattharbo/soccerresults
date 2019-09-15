class Event

  attr_reader :game, :type, :player, :team, :minute, :assistance, :player_out, :xcoord, :ycoord

  def initialize(game, type, player, team, player2)
    @game = game
    @type = type
    @player = player
    @team = team

    case @type.name
    when "Goal"
      @assistance = player2
    when "Substitution"
      @player_out = player2
    end

  end

  def define_event_settings(attributes = {})
    @minute = attributes[:minute]
    @xcoord = attributes[:xcoord]
    @ycoord = attributes[:ycoord]
  end

end
