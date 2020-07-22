Rails.application.routes.draw do
  resources :sessions, :only => [:create]

  root to: 'reviews#new'
  
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'   
  } 

  devise_scope :user do
    get "sign_in", :to => "users/sessions#new"
    delete "log_out", :to => "users/sessions#destroy" 
  end
  resources :reviews
end
