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

  def appointment_params
    params.require(:appointment).permit(:stage_id, :band_id, :start, :end, :schedule_id)
  end


end
