class AppointmentsController < ApplicationController

  def index
    @appointments = Appointment.all
    @instructors = Instructor.scoped.includes(:appointments)
  end

  def show
    @appointment = Appointment.find(params[:id])
  end

  def create
    @appointment = Appointment.new(params[:appointment])
    if @appointment.save
      respond_to do |format|
        format.html {flash[:notice] = 'Appointment succesfully created'
            redirect_to appointments_path}
        format.json
      end
    else
      redirect_to new_appointment_path
    end
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
        format.html {flash[:notice] = "Successfully Deleted"}
        format.js
      end
  end
end
