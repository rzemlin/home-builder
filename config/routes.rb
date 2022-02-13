Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/register', to: 'users#new'
  post '/users', to: 'users#create'

  get '/login', to: 'sessions#new'
  post 'sessions', to: 'sessions#create'

  get '/logout', to: 'sessions#destroy'
  get '/show', to: 'users#show'

  root 'application#home'

  #All user routes
  resources :users, only: [:new, :create, :index, :show, :destroy]
  
  resources :users, only: [:show] do
    resources :accounts, only: [:index, :show, :new]
  end

end
