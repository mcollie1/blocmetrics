class EventsController < ApiController
  skip_before_action :verify_authenticity_token
  respond_to :json

  def index
    @events = Event.where(app_owner: '#{current_user.email}').all
    event = @events.first
    @application_name = event.application
  end

  # POST /events.json
  def create
    Event.create!(event_params)
  

    respond_to do |format|
      format.json { head :ok }
      format.js
    end
  end

  private

  def event_params
    #puts "**** #{params.to_yaml}"
    
    params.require(:event).permit(:name, :topic_name, :app_user, :app_owner, :application)
  end

end
