class PatientsController < ApplicationController
  before_action :set_patient, only: [:edit, :show, :update, :destroy]

  def new
    @patient = Patient.new
  end

  def create
    @patient = Patient.new(patient_params)
    respond_with @patient, location: patients_path
  end

  def update
    @patient.update(patient_params)
    respond_with @patient, location: patients_path
  end

  def edit
  end

  def destroy
    @patient.destroy
    respond_with @patient, location: patients_path
  end

  def show
  end

  def index
    @q = Patient.ransack(params[:q])
    @patients = @q.result.page params[:page]
  end

  private
  def patient_params
    params.require(:patient).permit(:medical_record_number, :name, :gender, :birthdate, :admission_date, :age, :marital_status, :mother_name, :father_name, 
    :sus_card, :cpf, :rg, :county, :adress, :phone, :cnes_id, :status, :agent_id)
  end

  def set_patient
    @patient = Patient.find(params[:id])
  end
end