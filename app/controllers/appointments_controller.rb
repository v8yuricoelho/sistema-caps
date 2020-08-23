class AppointmentsController < ApplicationController
  before_action :set_appointment, only: [:edit, :show, :update, :destroy]

  def new
  end

  def create
    appointment = Appointment.new(appointment_params)
      
    if appointment.save
      render json: { status: "SUCCESS", message: "You created a new appointment in the database. See below", data: appointment }, status: :ok
    else
      render json: { status: "ERROR", message: "You were unable to save a new appointment. Please try again", data: appointment.errors }, status: :unprocessable_entity
    end
  end

  def update
    appointment = Appointment.find(params[:id])

    if appointment.update_attributes(appointment_params)
      render json: { status: "SUCCESS", message: "You updated the appointment record in the database", data: appointment }, status: :ok
    else
      render json: { status: "ERROR", message: "You were unable to update the appointment record. Please try again", data: appointment.errors }, status: :unprocessable_entity
    end
  end

  def edit
  end

  def destroy
    appointment = Appointment.find(params[:id])

    appointment.destroy
    render json: { status: "SUCCESS", message: "You deleted an appointment record", data: appointment }, status: :ok
  end

  def show
  end

  def index
    @q = Appointment.ransack(params[:q])
    @appointments = @q.result.page params[:page]
  end

  private
  def appointment_params
    params.require(:appointment).permit(:date, :medicine_name, :medicine_dose, :patient_id, :professional_id)
  end

  def set_appointment
    @appointment = Appointment.find(params[:id])
  end
end
