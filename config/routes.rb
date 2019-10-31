Rails.application.routes.draw do
  
  root 'home#index'
  get 'arrivals/index'
  namespace :api do
    namespace :v1 do
      resources :arrivals
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #root 'appointments#index' 

  get 'appointments/get_users', to: 'appointments#get_users'
  resources :appointments
  
end
