class TeamsController < ApplicationController

  def index
    @teams = HASHOFFRENCHTEAMS
  end

  def show
    @team = HASHOFFRENCHTEAMS[params[:id].to_i]
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
