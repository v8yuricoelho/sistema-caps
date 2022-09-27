# frozen_string_literal: true

Rails.application.routes.draw do
  resources :agents, except: :delete
  resources :patients, except: :delete
  resources :professionals, except: :delete

  root to: 'patients#index'
end
