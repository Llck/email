Rails.application.routes.draw do
  
  root 'stars#index'

  resources :stars
end
