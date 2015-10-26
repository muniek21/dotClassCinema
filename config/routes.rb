Rails.application.routes.draw do
  get '/users' => 'users#index'
  get '/users/new' => 'users#new'
  post '/users' => 'users#create'
  get '/users/:id' => 'users#show', as: :user
  post 'users' => 'users#create'
  get 'users/:id/edit' => 'users#edit'
  patch 'users/:id' => 'users#update'
  delete 'users/:id' => 'users#destroy'

  namespace :admin do
    resources :movies

    get 'movies' => 'movies#index'
    get 'movies/show/:id' => 'movies#show'
    get 'movies/edit/:id' => 'movies#edit'
    patch 'movies/:id' => 'movies#update'
    get 'movies/new' => 'movies#new'
    get 'movies/create'
    get 'movies/delete/:id' => 'movies#destroy', as: :delete_movie

  end
end
