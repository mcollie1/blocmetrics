class EventsController < ApiController

  def index
  end
  # POST /events.json
  def create
    #Parameters:
      #{
        #name: "event name; required",
        #property_1: "some value",
        #property_2: "some other value"
      #}
  end

  private

  def event_params
    params.require(:event).permit(:name, :property_1, :property_2)
  end
end
