class AppointmentsController < ApplicationController
  def index
    @appointments = Appointments.all
  end

  def new
    @festival_number = session[:festival]["id"]
    @festival = Festival.find(@festival_number)
    @appointment = Appointment.new
    #binding.pry
  end

  def create
    @appointment = Appointment.new(appointment_params)
    @festival = Festival.find(session[:festival]["id"])
    if @appointment.save
      redirect_to "/festivals/#{Festival.find(session[:festival]["id"]).name}/stages/#{@appointment.stage.id}"
    else
      render 'new'
    end
  end

  def edit
    @appointment = Appointment.find(params[:id])
    @festival_number = session[:festival]["id"]
    @festival = Festival.find(@festival_number)
  end

  def update
    @appointment = Appointment.find(params[:id])
    @festival = Festival.find(session[:festival]["id"])
    if @appointment.update(appointment_params)
      redirect_to "/festivals/#{session[:festival]["id"]}/stages/#{params[:stage_id]}"
    else
      render "edit"
    end
  end

  def destroy
    binding.pry
    Appointment.find(params[:appointment_id]).destroy
    redirect_to "/festivals/#{session[:festival]["id"]}/stages/#{params[:stage_id]}"
  end

  def appointment_params
    params.require(:appointment).permit(:stage_id, :band_id, :start, :end, :schedule_id)
  end


end
