class ProfessionalsController < ApplicationController
    skip_before_action :verify_authenticity_token

    def new
    end
  
    def create
        professional = Professional.new(professional_params)

        if professional.save
            render json: { status: "SUCCESS", message: "You created a new professional in the database. See below", data: professional }, status: :ok
        else 
            render json: { status: "ERROR", message: "You were unable to save a new professional. Please try again", data: professional.errors }, status: :unprocessable_entity
        end
    end
  
    def update
        professional = Professional.find(params[:id])

        if professional.update_attributes
            render json: { status: "SUCCESS", message: "You updated the professional record in the database", data: professional }, status: :ok
        else
            render json: { status: "ERROR", message: "You were unable to update the professional record. Please try again", data: professional.errors }, status: :unprocessable_entity
        end
    end
  
    def edit
    end
  
    def destroy
        professional = Professional.find(params[:id])

        professional.destroy
        render json: { status: "SUCCESS", message: "You deleted a professional record", data: professional }, status: :ok
    end
  
    def show
        professional = Professional.find(params[:id])

        render json: { status: "SUCCESS", message: "See the information of your loaded professional below", data: professional }, status: :ok
    end
  
    def index
        @q = Professional.ransack(params[:q])
        @professionals = @q.result.page params[:page]
    end

    private
    def professional_params
        params.require(:professional).permit(:name, :function, :email, :phone, :address, :cnes_id)
    end
end