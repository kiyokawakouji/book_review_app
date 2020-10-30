Rails.application.routes.draw do

  
  devise_scope :user do
    get "sign_up", :to => "users/registrations#new"
    get "log_in", :to => "users/sessions#new"
    get "log_out", :to => "users/sessions#destroy" 
  end
  
  devise_for :users, controllers: {
   registrations: "users/registrations",
   sessions: "users/sessions",
   confirmations: "users/confirmations"
  }

 root to: "homes#index"
 resources :users
 resources :reviews

 if Rails.env.development?  
  mount LetterOpenerWeb::Engine, at: "/letter_opener" 
 end
end
