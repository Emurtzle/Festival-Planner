class SessionsController < ApplicationController
  def new
  end

  #Reminder to adjust case comparisons here
  def create_user
    user = User.find_by(name: params[:session][:name].capitalize)
    binding.pry
    if user && user.authenticate(params[:session][:password])
      login_user(user)
      redirect_to user_path(user)
    else
      render 'new'
    end
  end

  def create_organizer
    organizer = Organizer.find_by(name: params[:session][:name].downcase)
    if organizer && organizer.authenticate(params[:session][:password])
      login_organizer(organizer)
      redirect_to organizer
    else
      render 'new'
    end
  end

  def destroy

  end
end
