class Selection

  attr_reader :player, :formation, :starter, :position

  def initialize(player, formation)
    @player = player
    @formation = formation
  end

  def define_selection_settings(attributes = {})
    @position = attributes[:position]
    @starter = attributes[:starter]
  end

  # TO BE CHECKED WITH CONTROLLER
  # def position_after_sub(position)
  #   @position = position
  # end

end
