class EventsController < ApiController
  skip_before_action :verify_authenticity_token
  respond_to :json

  def index
  end

  # POST /events.json
  def create
    users = User.all.map { |u| u["email"] }
    app_owner = params['app_owner']
    
    if users.include?(app_owner)
      user = User.find_by_email(app_owner)
      user.events.create!(event_params)
    else
      :send_app_owner_error_email
    end

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

  def send_app_owner_error_email
    UserMailer.event_owner(app_owner).deliver
  end

end
