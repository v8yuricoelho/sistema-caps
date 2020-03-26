class PatientsController < ApplicationController
  def new
  end

  def create
    patient = Patient.new(patient_params)
      
    if patient.save
      render json: { status: "SUCCESS", message: "You created a new patient in the database. See below", data: patient }, status: :ok
    else
      render json: { status: "ERROR", message: "You were unable to save a new patient. Please try again", data: patient.errors }, status: :unprocessable_entity
    end
  end

  def update
    patient = Patient.find(params[:id])

    if patient.update_attributes(patient_params)
      render json: { status: "SUCCESS", message: "You updated the patient record in the database", data: patient }, status: :ok
    else
      render json: { status: "ERROR", message: "You were unable to update the patient record. Please try again", data: patien.errors }, status: :unprocessable_entity
    end
  end

  def edit
  end

  def destroy
    patient = Patient.find(params[:id])

    patient.destroy
    render json: { status: "SUCCESS", message: "You deleted a patient record", data: patient }, status: :ok
  end

  def show
    patient = Patient.find(params[:id])

    render json: { status: "SUCCESS", message: "See the information of your loaded patient below", data: patient }, status: :ok
  end

  def index
    patients = Patient.order(:id)

    render json: { status: "SUCCESS", message: "See all patients below", data: patients }, status: :ok
  end
end

private
def patient_params
  params.require(:patient).permit(:medical_record_number, :name, :gender, :birthdate, :admission_date, :age, :marital_status, :mother_name, :father_name, 
  :sus_card, :cpf, :rg, :county, :adress, :phone, :cnes_id, :status, :agent_id)
end
