# frozen_string_literal: true

class PatientsController < ApplicationController
  before_action :set_patient, only: %i[edit show update destroy]

  def new
    @patient = Patient.new
  end

  def create
    @patient = Patient.new(patient_params)

    respond_to do |format|
      if @patient.save
        format.html { redirect_to @patient, status: :created }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @patient.update(patient_params)
        format.html { redirect_to @patient, status: :ok }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def edit; end

  def show; end

  def index
    @q = Patient.ransack(params[:q])
    @patients = @q.result.page params[:page]
  end

  private

  def patient_params
    params.permit(:medical_record_number, :name, :gender, :birthdate, :admission_date, :age, :marital_status, :mother_name, :father_name,
                  :sus_card, :cpf, :rg, :county, :adress, :phone, :cnes_id, :status, :agent_id, psychoative_substance_ids: [], cid10_ids: [])
  end

  def set_patient
    @patient = Patient.find(params[:id])
  end
end
