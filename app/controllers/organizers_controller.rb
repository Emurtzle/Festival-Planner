class OrganizersController < ApplicationController
  def show
    @organizer = Organizer.find(params[:id])
  end

  def new
    @organizer = Organizer.new
  end

  def create
    @organizer = Organizer.new(organizer_params)

    if @organizer.save
      login_user(@organizer)
      redirect_to @organizer
    else
      render "new"
    end
  end

  def organizer_params
    params.require(:organizer).permit(:name, :password)
  end


end
