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
    if @appointment.save
      redirect_to "/festivals/#{Festival.find(params[:festival_id]).id}/stages/#{@appointment.stage.id}"
    else
      render 'new'
    end
  end


end
