Rails.application.routes.draw do
  resources :agents, except: :delete
  resources :patients, except: :delete

  root to: 'patients#index'
end
