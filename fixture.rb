class Fixture

  attr_reader :stage, :date, :time, :status, :final_score, :hometeam, :awayteam,

  def initialize(attributes = {})
    @stage = attributes[:stage]
    @date = attributes[:date]
    @time = attributes[:time]
    @status = "Not started"
    @final_score = nil
    # @stadium = attributes[:stadium]
    # @season = attributes[:season]
  end

  def set_score(score)
    @status == "Done" ? @final_score = score : puts "Error"
    # Handle an error here instead
  end

  def end_game
    @status = "Done"
  end

  def set_home_team(team)
    @hometeam = team
  end

  def set_away_team(team)
    @awayteam = team
  end

end
