class EventsController < ApiController
  skip_before_action :verify_authenticity_token
  respond_to :json

  def index
    @events = Event.all
  end

  # POST /events.json
  def create
    @event = Event.create!(event_params)
    @event.parameters.create!(event_params)

    respond_to do |format|
      format.html
      format.json { head :ok }
      format.js
    end
  end

  private

  def event_params
    #puts "**** #{params.to_yaml}"
    
    params.require(:event).permit(:name, parameters_attributes: [:topic_name])
  end
end
