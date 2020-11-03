Rails.application.routes.draw do
  
 root to: "homes#index"

 devise_for :users, controllers: { 
  omniauth_callbacks: 'users/omniauth_callbacks'
 }
 
 resources :users, only: [:index]
 resources :reviews

 if Rails.env.development?  
  mount LetterOpenerWeb::Engine, at: "/letter_opener" 
 end
end
