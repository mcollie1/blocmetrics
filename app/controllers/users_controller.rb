class UsersController < ApplicationController
  def index
  end

  def show
    user = User.find(params[:id])
    @events = user.events
    event = @events.first
    @application_name = event.application
  end

  def update
    if current_user.update_attributes(user_params)
      flash[:notice] = "User information updated"
      redirect_to edit_user_registration_path(current_user)
    else
      render "devise/registrations/edit"
    end
  end

  private

  def user_params
    params.require(:user).permit(:name)
  end
end
