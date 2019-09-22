class Fixture < ApplicationRecord
  belongs_to :home_team, :class_name => 'Team'
  belongs_to :away_team, :class_name => 'Team'
  belongs_to :stadium
  belongs_to :season
end


# monacol = Fixture.create(home_team: Team.where(city:"Monaco")[0], away_team: Team.where(city:"Lyon")[0], stadium: Stadium.where(town:"Monaco")[0], season: Season.last)
# monacol.status = "done"
# monacol.date = "2019_08_09"
# monacol.final_score = "0-3"
# monacol.stage = 1
