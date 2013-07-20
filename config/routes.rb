RedditOnRails::Application.routes.draw do
  devise_for :users
  resources :pages
  root 'pages#index'
end
