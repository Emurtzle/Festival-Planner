module SessionsHelper

  def login_user(user)
    session[:user_id] = user.id
  end

  def login_organizer(organizer)
    session[:organizer_id] = organizer.id
  end

  def current_user
    if session[:user_id]
      @current_user ||= User.find_by(id: session[:user_id])
    end
  end

  def current_organizer
    if session[:organizer_id]
      @current_organizer ||= Organizer.find_by(id: session[:organizer_id])
    end
  end

  def user_logged_in?
    !current_user.nil?
  end

  def organizer_logged_in?
    !current_organizer.nil?
  end

  def log_out
    session.delete :user_id
    session.delete :organizer_id

    @current_user = nil
    @current_organizer = nil
  end

end
