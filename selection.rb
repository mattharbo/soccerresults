class Selection

  attr_reader :player, :formation, :starter
  attr_accessor :position

  def initialize(player, formation, attributes = {})
    @player = player
    @formation = formation
    @position = attributes[:position]
    @starter = attributes[:starter]
  end

  def position_after_sub(position)
    @position = position
  end

end
