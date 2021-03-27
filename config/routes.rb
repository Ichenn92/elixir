Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "pages/search", to: "pages#search"

  resources :activities, only: [:new, :create, :edit, :update, :index, :show]

  resources :groups, only: :show do
    resources :messages, only: :create
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
