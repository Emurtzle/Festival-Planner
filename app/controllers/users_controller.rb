class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      login_user(@user)
      redirect_to @user
    else
      render "new"
    end
  end

  def user_params
    params.require(:user).permit(:name, :password)
  end


end
