class Fixture < ApplicationRecord
  belongs_to :home_team, :class_name => 'Team'
  belongs_to :away_team, :class_name => 'Team'
  belongs_to :stadium
  belongs_to :season
  has_many :reports
  has_many :events
end


# monacol = Fixture.create(home_team: Team.where(city:"Monaco")[0], away_team: Team.where(city:"Lyon")[0], stadium: Stadium.where(town:"Monaco")[0], season: Season.last)
# monacol.status = "done"
# monacol.date = "2019_08_09"
# monacol.final_score = "0-3"
# monacol.stage = 1

# psgnimes = Fixture.create(home_team: Team.where(city:"Paris")[0], away_team: Team.where(city:"Nîmes")[0], stadium: Stadium.where(town:"Paris")[0], season: Season.last)
# psgnimes.status = "done"
# psgnimes.date = "2019_08_11"
# psgnimes.final_score = "3-0"
# psgnimes.stage = 1

# psgrennes = Fixture.create(home_team: Team.where(city:"Rennes")[0], away_team: Team.where(city:"Paris")[0], stadium: Stadium.where(town:"Rennes")[0], season: Season.last)
# psgrennes.status = "done"
# psgrennes.date = "2019_08_18"
# psgrennes.final_score = "2-1"
# psgrennes.stage = 2

# psgrennes = Fixture.create(home_team: Team.where(city:"Lyon")[0], away_team: Team.where(city:"Paris")[0], stadium: Stadium.where(town:"Lyon")[0], season: Season.last)
# psgrennes.status = "done"
# psgrennes.date = "2019_09_23"
# psgrennes.final_score = "0-1"
# psgrennes.stage = 6
