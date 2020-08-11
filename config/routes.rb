Rails.application.routes.draw do
  resources :agents
  resources :appointments
  resources :cid10s
  resources :patients
  resources :professionals

  root to: 'patients#index'
end
