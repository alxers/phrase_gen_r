Rails.application.routes.draw do
  root 'words#all_words'
  get '/all_words', to: 'words#all_words'

  resources :words
end
