class EventsController < ApiController
  skip_before_action :verify_authenticity_token
  respond_to :json

  def index
    @events = Event.all
  end

  # POST /events.json
  def create
    respond_to do |format|
      format.json { head :ok }
    end

    Event.create!(event_params)
  end

  private

  def event_params
    #puts "**** #{params.to_yaml}"
    
    params.require(:event).permit(:name, :parameters => [:topic_name])
  end
end
