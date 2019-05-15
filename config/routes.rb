Rails.application.routes.draw do

  resources :cars

  root to: 'cars#index'

end
