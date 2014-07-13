Rails.application.routes.draw do

  root 'statements#index'

  resources :statements

end
