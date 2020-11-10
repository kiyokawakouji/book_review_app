Rails.application.routes.draw do
  
 root to: "reviews#index"

 devise_for :users, controllers: { 
  sessions: 'users/sessions',
  registrations: "users/registrations",
  omniauth_callbacks: 'users/omniauth_callbacks'
 }

 devise_scope :user do
   delete '/users/sign_out' => 'devise/sessions#destroy'
   delete '/users/log_out'  => 'devise/sessions#destroy'
 end
 
 resources :users
 resources :reviews

 if Rails.env.development?  
  mount LetterOpenerWeb::Engine, at: "/letter_opener" 
 end
end
