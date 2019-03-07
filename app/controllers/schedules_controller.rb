class SchedulesController < ApplicationController
  def index
    @schedules = Schedule.all
  end

  def show
    @festival = Festival.find(params[:id])
  end

  def new
    @schedule = Schedule.new
  end

  def create
    @schedule = Schedule.new(schedule_params)
    @schedule.festival = Festival.find(params[:festival_id])

    if @schedule.save
      redirect_to schedules_path
    else
      render "new"
    end
  end

  def edit
    @schedule = Schedule.find(params[:id])
  end

  def update
    @schedule = Schedule.find(schedule_params)
    if @schedule.update(schedule_params)
      redirect_to @schedule
    else
      render "edit"
    end
  end

  def add
    sched = Schedule.find_or_create_by(user_id: current_user.id, festival_id: params[:festival_id])
    sa = ScheduleAppointment.new(appointment_id: params[:appointment_id], schedule_id: sched.id)
    sa.save
    redirect_to "/festivals/#{params[:festival_id]}/stages/#{params[:stage_id]}"
  end

  def schedule_params
    params.require(:schedule).permit(:festival_id, :user_id)
  end
end
