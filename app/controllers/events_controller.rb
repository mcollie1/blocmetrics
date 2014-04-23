class EventsController < ApiController
  skip_before_action :verify_authenticity_token
  respond_to :json

  def index
  end

  # POST /events.json
  def create
    app_owner = params[app_owner]
    puts "*** #{params[app_owner]}"
    puts "*** #{params['app_owner']}"
    user = User.find_by_email(app_owner)
    user.events.create!(event_params)
  

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
