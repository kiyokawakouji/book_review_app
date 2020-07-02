Rails.application.routes.draw do
<<<<<<< HEAD
<<<<<<< HEAD
=======
  devise_for :users
  root to: 'reviews#index'
  resources :reviews
>>>>>>> feature/branch
=======
  devise_for :users
  root to: 'reviews#index'
  resources :reviews

  # devise_for :users, controllers: {
  #       sessions: 'users/sessions'
  #     }
  # end
>>>>>>> feature/branch
end
