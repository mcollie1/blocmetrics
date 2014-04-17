class EventsController < ApiController
  skip_before_action :verify_authenticity_token

  def index
  end
  # POST /events.json
  def create
    @event = Event.create!(event_params)
    #Parameters:
      #{
        #name: "event name; required",
        #property_1: "some value",
        #property_2: "some other value"
      #}
  end

  private

  def event_params
    params.require(:event).permit(:name, :created_at, :updated_at)
  end
end
