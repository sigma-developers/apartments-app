Rails.application.routes.draw do
  
  resources :apartments
  resources :leases, only: [:index, :create, :destroy]

end
