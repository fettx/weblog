Rails.application.routes.draw do
  #devise_for :users
  devise_for :users do
  get 'logout' => 'devise/session#destroy'
  end
  resources :posts
  root :to => 'posts#index'

  get '/about', to: 'pages#about'
end
