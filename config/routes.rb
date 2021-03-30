Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "pages/search", to: "pages#search"

  resources :activities, only: [:new, :create, :index, :show]

  resources :groups, only: :show do
    resources :messages, only: :create
  end

  resources :friendships, only: [:index, :create, :destroy] do
    post "/accept", to: "friendships#accept"
    post "/reject", to: "friendships#reject"
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
