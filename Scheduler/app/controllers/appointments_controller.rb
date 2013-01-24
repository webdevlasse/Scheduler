class AppointmentsController < ApplicationController

  def index
    @appointments = Appointment.all
  end

  def show
    @appointment = Appointment.find(params[:id])
  end

  def create
    @appointment = Appointment.new(params[:appointment])
  end

  def new
    @appointment = Appointment.new
      respond_to do |format|
        format.html
        format.json {render json: @appointment}
      end
  end

  def destroy
    @appointment = Appointment.find(params[:id])
    @appintment.destroy
      respond_to do |format|
        format.js
      end
  end
end
