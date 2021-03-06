Rails.application.routes.draw do
  get "events/create"
  devise_for :users
  root to: "pages#home"
  get "pages/search", to: "pages#search"

  resources :activities
  resources :events, only: [:create]
  resources :bookings, only: [:index, :create, :update]
  resources :categories, only: [:index, :show]

  resources :groups, only: [:index, :show] do
    resources :messages, only: :create
    resources :memberships, only: [:create, :destroy]
  end

  resources :friendships, only: [:index, :create, :destroy] do
    post "/accept", to: "friendships#accept"
    post "/reject", to: "friendships#reject"
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
