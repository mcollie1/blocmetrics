class WelcomeController < ApplicationController
  def index
    @events = Event.where(application: "Bloccit")
  end

  def about
  end
end
