Rails.application.routes.draw do
  root 'words#all_words'
  get '/all_words', to: 'words#all_words'
  get '/history', to: 'words#history'

  resources :words
end
