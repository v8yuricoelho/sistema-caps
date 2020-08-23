class AgentsController < ApplicationController
    before_action :set_agent, only: [:edit, :show, :update, :destroy]

    def new
    end
  
    def create
      agent = Agent.new(agent_params)
        
      if agent.save
        render json: { status: "SUCCESS", message: "You created a new apgent in the database. See below", data: agent }, status: :ok
      else
        render json: { status: "ERROR", message: "You were unable to save a new agent. Please try again", data: agent.errors }, status: :unprocessable_entity
      end
    end
  
    def update
      agent = Agent.find(params[:id])
  
      if agent.update_attributes(agent_params)
        render json: { status: "SUCCESS", message: "You updated the agent record in the database", data: agent }, status: :ok
      else
        render json: { status: "ERROR", message: "You were unable to update the agent record. Please try again", data: agent.errors }, status: :unprocessable_entity
      end
    end
  
    def edit
    end
  
    def destroy
      agent = Agent.find(params[:id])
  
      agent.destroy
      render json: { status: "SUCCESS", message: "You deleted an agent record", data: agent }, status: :ok
    end
  
    def show
    end
  
    def index
      @q = Agent.ransack(params[:q])
      @agents = @q.result.page params[:page]
    end

    private
    def professional_params
        params.require(:agent).permit(:name, :email, :phone, :address, :cnes_id)
    end

    def set_agent
      @agent = Agent.find(params[:id])
    end
end
