CookBook::Application.routes.draw do
  resources :recipes, :ingredients, :users, :sessions

  root to: 'recipes#index'

  get '/signup', to: 'users#new'
  delete '/signout', to: 'sessions#destroy', via: :delete
  get '/signin', to: 'sessions#new'
end

