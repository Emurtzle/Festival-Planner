class FestivalsController < ApplicationController
  def index
    @festivals = Festival.all
  end

  def show
    @festival = Festival.find(params[:id])
    session[:festival] = @festival
  end

  def new
    @festival = Festival.new
  end

# Add organizer_id foreign key to festivals table, develop tests, add gate to make sure can't create festival as user
  def create
    @festival = Festival.new(festival_params)
    @festival.organizer_id = current_organizer.id
    if @festival.save
      redirect_to @festival
    else
      render 'new'
    end
  end

  def edit
    @festival = Festival.find_by(params[:id])
  end

  def update
    @festival = Festival.find(params[:id])
    if @festival.update(festival_params)
      redirect_to @festival
    else
      render "edit"
    end
  end

  def festival_params
    params.require(:festival).permit(:name, :city, :description, :duration)
  end
end
