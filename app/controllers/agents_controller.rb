# frozen_string_literal: true

class AgentsController < ApplicationController
  before_action :set_agent, only: %i[edit show update]

  def new
    @agent = Agent.new
  end

  def create
    @agent = Agent.new(agent_params)

    respond_to do |format|
      if @agent.save
        format.html { redirect_to @agent }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @agent.update(agent_params)
        format.html { redirect_to @agent }
      else
        format.html { render :edit }
      end
    end
  end

  def edit; end

  def show; end

  def index
    @q = Agent.ransack(params[:q])
    @agents = @q.result.page params[:page]
  end

  private

  def agent_params
    params.require(:agent).permit(:name, :email, :phone, :address, :cnes_id)
  end

  def set_agent
    @agent = Agent.find(params[:id])
  end
end
