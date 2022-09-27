class AgentsController < ApplicationController
    before_action :set_agent, only: [:edit, :show, :update, :destroy]

    def new
    end
  
    def create
      @patient = Patient.new(patient_params)
    
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
        if @agent.update(patient_params)
            format.html { redirect_to @patient }
        else
            format.html { render :edit }
        end
      end
    end
  
    def edit
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
