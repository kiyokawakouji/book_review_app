Rails.application.routes.draw do
  root to: 'reviews#index'
  #root to: 'static_pages#top' → sipnup & login
  resources :reviews
end
