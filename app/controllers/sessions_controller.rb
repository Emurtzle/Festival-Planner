class SessionsController < ApplicationController

  def new
  end

  #Reminder to adjust case comparisons here
  def create_user
    binding.pry
    user = User.find_by(name: params[:session][:name])
    if user && user.authenticate(params[:session][:password])
      login_user(user)
      binding.pry
      redirect_to user_path(user)
    else
      render 'new'
    end
  end

  def create_organizer
    organizer = Organizer.find_by(name: params[:session][:name])
    if organizer && organizer.authenticate(params[:session][:password])
      login_organizer(organizer)
      redirect_to organizer_path(organizer)
    else
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to "/"
  end
end
