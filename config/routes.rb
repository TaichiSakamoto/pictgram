Rails.application.routes.draw do
  get 'favorites/index'

  get 'topics/new'

  get 'sessions/new'

  get 'users/new'

  root 'pages#index'
  get 'pages/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  get 'favorites/index'

  get 'topics/new'

  get 'sessions/new'

  get 'users/new'

    root 'pages#index'
    get 'pages/help'
end

Rails.application.routes.draw do
  get 'favorites/index'

  get 'topics/new'

  get 'sessions/new'

  root 'pages#index'

  get 'pages/help'
  resources 'users'
end

Rails.application.routes.draw do
  get 'favorites/index'

  get 'topics/new'

  root 'pages#index'

  get 'pages/help'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resource 'users'
end

Rails.application.routes.draw do
  get 'favorites/index'

  root 'pages#index'
  get 'pages/help'

  get     '/login',   to: 'sessions#new'
  post    '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources 'users'
  resources 'topics'
end

Rails.application.routes.draw do
  get 'sessions/new'

  root 'pages#index'
  get 'pages/help'

  get    '/login',    to: 'sessions#new'
  post   '/login',    to: 'sessions#create'
  delete '/logout',   to: 'sessions#destroy'

  resources 'users'
  resources 'topics'
  post '/favorites', to: 'favorites#create'

end

Rails.application.routes.draw do
  get 'favorites/index'

  get 'sessions/new'

  root 'pages#index'
  get 'pages/help'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources 'users'
  resources 'topics'
  post '/favorites', to: 'favorites#create'
  get '/favorites', to: 'favorites#index'

end
