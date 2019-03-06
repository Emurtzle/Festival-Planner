class StagesController < ApplicationController
  def index
    @stages = Festival.find(params[:festival_id]).stages
    @fest = Festival.find(params[:festival_id])
  end

  def show
    @stage = Stage.find(params[:id])
  end

  def new
    @stage = Stage.new
    @fest = Festival.find(params[:festival_id])
  end

  def create
    @stage = Stage.new(stage_params)
    @stage.festival = Festival.find(params[:festival_id])

    if @stage.save
      redirect_to "/festivals/#{Festival.find(params[:festival_id]).id}/stages"
    else
      render "new"
    end
  end

  def edit
    @stage = Stage.find(params[:id])
    @fest = Festival.find(params[:festival_id])
  end

  def update
    @stage = Stage.find(params[:id])
    if @stage.update(stage_params)
      redirect_to "/festivals/#{Festival.find(params[:festival_id]).id}/stages/#{@stage.id}"
    else
      render 'edit'
    end
  end

  def stage_params
    params.require(:stage).permit(:name, :description)
  end
end
