Rails.application.routes.draw do
  get 'sessions/new'
  
  get 'users/new'
  # rails03 エラー解決の画像 get 'users/new' 記入なし 
  root 'pages#index'
  get 'pages/help'
  
  resources :users
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
