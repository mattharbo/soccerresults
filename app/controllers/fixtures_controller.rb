class FixturesController < ApplicationController

  def index
    @fixtures = Fixture.all
  end

  def show
    @fixture = Fixture.find(params[:id])

    if Report.where(fixture:params[:id], team:@fixture.home_team_id)[0] != nil
      @home_report = Report.where(fixture:params[:id], team:@fixture.home_team_id)[0]
      @away_report = Report.where(fixture:params[:id], team:@fixture.away_team_id)[0]
    end

  end

end
