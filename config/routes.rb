Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :packets, only: [:new, :create, :index, :show] do
    get "/add_vote", to: "packets#add_vote"
    resources :packet_ratings, only: [:create]
    resources :project_packets, only: [:create]
  end

  resources :projects, only: [:new, :create, :show]
  resources :users, only: [:show]
end
