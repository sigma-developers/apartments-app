class ApartmentsController < ApplicationController
    def show
        apartment=Apartment.find(params[:id])
        render json: apartment
    end
    def index
        apartment=Apartment.all
        render json: apartment, status: :ok
    end
    def update
        apartment=Apartment.find(params[:id])
        apartment.update(number: params(:number))
        render json: apartment
    end
    def destroy
        apartment=Apartment.find(params[:id])
        apartment.destroy
    end
end
