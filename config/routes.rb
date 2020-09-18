Rails.application.routes.draw do
 root to: 'homes#index'
 
 devise_for :users, controllers: {
  registrations: 'users/registrations',
  sessions: "users/sessions",
 }

 devise_scope :user do
    get "sign_in", :to => "users/sessions#new"
    get "sign_out", :to => "users/sessions#destroy" 
 end

 if Rails.env.development?  
   mount LetterOpenerWeb::Engine, at: "/letter_opener"  
 end

 resources :users

 root to: 'reviews#new'
 resources :reviews
end
