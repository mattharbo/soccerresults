class StatReport

  attr_reader :team, :game
  attr_accessor :possession, :tot_shoot, :on_target_shoot, :offside

  def initialize(team, game)
    @team = team
    @game = game
  end

  def set_final_stat(attributes = {})
    @possession = attributes[:possession]
    @tot_shoot = attributes[:tot_shoot]
    @on_target_shoot = attributes[:on_target_shoot]
    @offside = attributes[:offside]
  end

end
