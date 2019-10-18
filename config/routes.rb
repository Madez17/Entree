Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'appointments#index' 
  get 'appointments/get_user', to: 'appointments#get_user' 
  resources :appointments
  
end