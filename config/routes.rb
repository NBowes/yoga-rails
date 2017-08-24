Rails.application.routes.draw do
  resources :poses
  root 'pages#home'
  get 'pages/home'
  get 'pages/about'
  get 'pages/poses'
  get 'pages/forum'

  get 'pages/new_pose' => 'pages#new_pose'
  post 'pages/new_pose' => 'pages#create_pose'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/login' => 'sessions#new'
  get '/logout' => 'sessions#destroy'
  post '/login' => 'sessions#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
