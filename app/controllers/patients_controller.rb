class PatientsController < ApplicationController
  def new
  end

  def create
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def show
    patient = Patient.find(params[:id])
    render json: {data: patient}, status: :ok
  end

  def index
    patients = Patient.order(:id)
    render json: {data: patients}, status: :ok
  end
end
