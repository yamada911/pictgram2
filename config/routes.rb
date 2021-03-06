Rails.application.routes.draw do
  get 'topics/index'
  get 'topics/new'
  get 'sessions/new'
  
  get 'users/new'
  # rails03 エラー解決の画像 get 'users/new' 記入なし rails06 画像投稿機能の作成の画像 get 'topics~' 記入なし。
  root 'pages#index'
  get 'pages/help'
  
  resources :users
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
  resources :users
  resources :topics
  
  get 'favorites/index'
  post '/favorites', to: 'favorites#create'
  delete '/favorites', to: 'favorites#destroy'
  
  # rails07 確認テスト
  
  # get '/comments/:topic_id/new' => 'comment#new', as: 'comments'
  # post '/comments/:topic_id/create', to: 'comments#create', as:'comments_create'
  # resources :comments
  
  resources :users
  resources :topics

  get 'comments/new'
  post '/comments', to: 'comments#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
