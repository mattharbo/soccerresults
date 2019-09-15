class Fixture

  attr_reader :stage, :date, :time, :status, :hometeam, :awayteam, :final_score

  def initialize(stadium, season)
    @status = "Not started"
    @final_score = nil
    @stadium = stadium
    @season = season
  end

  def define_game_settings(attributes = {})
    @stage = attributes[:stage]
    @date = attributes[:date]
    @time = attributes[:time]
  end

  def set_score(score)
    @status == "Done" ? (@final_score = score) : (return puts "Error")
    # Handle an error here instead
  end

  def end_game
    @status == "Not started" ? (@status = "Done") : (return puts "The game is already started!")
    # Handle an error here instead
  end

  def set_home_team(team)
    @hometeam = team
  end

  def set_away_team(team)
    @awayteam = team
  end

end
