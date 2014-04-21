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

    if Event.count > 0 # if there are application events?
      event_name = params['name']
      events = Event.all
      names = events.map { |e| e["name"] }

      if names.include?(event_name)
        event = events.find_by_name(event_name)
        event.parameters.build(parameter_params)
      else
        new_event = Event.create!(event_params)
        new_event.parameters.build(parameter_params)
      end
    else #if no event exists yet
      first_event = Event.create!(event_params)
      first_event.parameters.build(parameter_params)
    end
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

  def parameter_params
    params.require(:parameter).permit(:topic_name)
  end
end
