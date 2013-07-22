RedditOnRails::Application.routes.draw do
	root 'pages#index'
  get "comments/create"
  get "links/index"
  get "links/show"
  get "links/new"
  get "links/create"
  devise_for :users
  resources :pages
  resources :links
  resources :comments
end
