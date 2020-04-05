Rails.application.routes.draw do
  get 'users/new'
  # rails03 エラー解決の画像 get 'users/new' 記入なし 
  root 'pages#index'
  get 'pages/help'
  
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
