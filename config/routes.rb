Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'appointments#index' 
  get 'appointments/get_users', to: 'appointments#get_users' 
  resources :appointments
  
end