Rails.application.routes.draw do
  # Fix routes
  root 'words#index'

  resources :words
end
