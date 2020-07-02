Rails.application.routes.draw do
  devise_for :users
  root to: 'reviews#index'
  resources :reviews

  # devise_for :users, controllers: {
  #       sessions: 'users/sessions'
  #     }
  # end
end
