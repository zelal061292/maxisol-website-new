Rails.application.routes.draw do
  devise_for :users

  # get "posts", to: "posts#index"
  # get "posts/new", to: "posts#new"
  # get "posts/new", to: "posts#new"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :posts, only: [ :index, :new, :create, :delete, :show, :update]

  resource :contacts, only: [:new, :create] do
    get "/thanks" => "contacts#thanks"
  end

  #unauthenticated user do
  unauthenticated :user do
    root to: "pages#home", as: "home"
    get "/tarif" => "pages#tarif"
    get "/galery" => "pages#galery"
    # root to: "pages#tarif", as: "tarif"
  end

  #authenticate user do
  root to: "pages#dashboard", as:"dashboard"

  # get 'users/:id/dashboard', to: 'users#dashboard', as: :user_dashboard

end
