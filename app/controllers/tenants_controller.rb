class TenantsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_uprocessable_entity_response
    
    
    
    #GET /tenants
    def index
        tenants = Tenant.all
        render json: tenants
    end

    #GET /tenants/:id
    def show
        tenant = Tenant.find(params[:id])
        render json: tenant
    end

    #POST /tenants
    def create
        tenant = Tenant.create!(tenant_params)
        render json: tenant, status: :created
    end

    #PATCH /tenants
    def update
        tenant = Tenant.find(params[:id])
        tenant.update!(tenant_params)
        render json: tenant
    end


    #DELETE /tenants
    def destroy
        tenant = Tenant.find(params[:id])
        tenant.destroy

        head :no_content
    end

    private

    def tenant_params
        params.permit(:name, :age)
    end

    def render_not_found_response
        render json: {error: "Tenant not found"}, status: :not_found
    end

    def render_uprocessable_entity_response(invalid)
        render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end

end
