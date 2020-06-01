Rails.application.routes.draw do
  get 'categories/show'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :packets, only: [:new, :create, :index, :show] do
    resources :packet_ratings, only: [:create] # upvote
    resources :project_packets, only: [:create]
    resources :packet_tools, only: [:create]
  end

  resources :projects, only: [:new, :create, :show]
  resources :users, only: [:show]
  resources :categories, only: [:show]
end
