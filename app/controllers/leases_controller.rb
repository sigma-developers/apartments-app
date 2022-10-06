class LeasesController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def index
        leases = Lease.all
        render json: leases
    end
    def create
        lease = Lease.create!(params)
        render json: lease, status: :created
    end
    def destroy
        lease = Lease.find_by(id: params[:id])
        lease.destroy
        head :no_content
    end
    private

    def params
        params.permit(:rent)
    end

    def render_not_found_response
        render json: {error: "Tenant not found"}, status: :not_found
    end

end
