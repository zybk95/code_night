Rails.application.routes.draw do

  root to: 'movies#index'
  resource :movies
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
