Rails.application.routes.draw do
  resources :appointments
  resources :patients
  resources :doctors
  
  devise_for :users 
  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
  end

  get 'home/about'
  root 'home#index'
end
