Rails.application.routes.draw do
  root to: 'static_pages#top'
  root to: 'static_pages#home'
  resources :static_pages

  # get 'static_pages/top'
  # get 'static_pages/home'
end
