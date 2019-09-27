class PagesController < ApplicationController
  def about
  end

  def contact
  end

  def home
    @fixtures = Fixture.all
  end

end
