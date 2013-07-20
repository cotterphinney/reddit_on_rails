RedditOnRails::Application.routes.draw do
  get "links/index"
  get "links/show"
  get "links/new"
  get "links/create"
  devise_for :users
  resources :pages
  resources :links
  root 'pages#index'
end
