class ApartmentsController < ApplicationController
    def show
        apartment=Apartment.find(params[:id])
        if apartment
            render json: apartment
        else
            render json: { error: "Apartment not found" }, status: :not_found
        end
        
    end
    def create
        apartment =Apartment.create!(parameters)
        render json: apartment, status: :created
        
    end
    def index
        apartment=Apartment.all
        render json: apartment, status: :ok
    end
    def update
        apartment=Apartment.find(params[:id])
        apartment.update(number: params(:number))
        if apartment
            render json: apartment
        else
            render json: { error: "Apartment not found" }, status: :not_found
        end
    end
    def destroy
        apartment=Apartment.find(params[:id])
        apartment.destroy
        head :no_content
    end
    private
    def parameters
        params.permit(:name)
    end
end
