Rails.application.routes.draw do
  resources :tenants
  resources :apartments
  resources :leases, only: [:index, :create, :destroy]
end
