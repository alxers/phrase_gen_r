Rails.application.routes.draw do
  root 'words#all_words'

  resources :words
end
