class TeamsController < ApplicationController

  def index
    @teams = Team.all
  end

  def show
    @team = Team.find(params[:id])
    @team_fixtures = Fixture.where(home_team:params[:id]).or(Fixture.where(away_team:params[:id]))
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
