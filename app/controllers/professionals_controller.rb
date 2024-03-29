# frozen_string_literal: true

class ProfessionalsController < ApplicationController
  before_action :set_professional, only: %i[edit show update]

  def new
    @professional = Professional.new
  end

  def create
    @professional = Professional.new(professional_params)

    respond_to do |format|
      if @professional.save
        format.html { redirect_to @professional, status: :created }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @professional.update(professional_params)
        format.html { redirect_to @professional, status: :ok }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def edit; end

  def show; end

  def index
    @q = Professional.ransack(params[:q])
    @professionals = @q.result.page params[:page]
  end

  private

  def professional_params
    params.permit(:name, :function, :email, :phone, :address, :cnes_id)
  end

  def set_professional
    @professional = Professional.find(params[:id])
  end
end
