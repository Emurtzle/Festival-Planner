class SchedulesController < ApplicationController
  def index
    if current_user
      if !current_user.schedules.empty?
        @schedules = current_user.schedules
      end
    end
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

  def show
    @schedule = Schedule.find(params[:id])
    @festival = @schedule.festival
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

    if !sched.validate_time
      sa.destroy
      session[:error] = "Sorry, you already have an appointment for that time"
    end

    redirect_to "/festivals/#{params[:festival_id]}/stages/#{params[:stage_id]}"
  end

  def bands_add
    sched = Schedule.find_or_create_by(user_id: current_user.id, festival_id: params[:festival_id])
    sa = ScheduleAppointment.new(appointment_id: params[:appointment_id], schedule_id: sched.id)
    sa.save

    if !sched.validate_time
      sa.destroy
      session[:error] = "Sorry, you already have an appointment for that time"
    end

    redirect_to band_path(sa.appointment.band)
  end

  def destroy
    sa = ScheduleAppointment.find_by(appointment_id: params[:appointment_id])
    sa.destroy
    redirect_to schedule_path(sa.schedule)
  end

  def schedule_params
    params.require(:schedule).permit(:festival_id, :user_id)
  end
end
