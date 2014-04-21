class EventsController < ApiController
  skip_before_action :verify_authenticity_token
  respond_to :json

  def index
    @events = Event.all
  end

  # POST /events.json
  def create
    Event.create!(event_params)
    
    respond_to do |format|
      format.json { head :ok }
    end
  end

  private

  def event_params
    puts "**** #{params.to_yaml}"
    params.require(:event).permit(:name, parameters_attributes: [:topic_name])
  end
end
