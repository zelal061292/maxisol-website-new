Rails.application.routes.draw do
  devise_for :users
  # root to: 'pages#home'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :posts, only: [ :index, :new, :create, :delete, :show, :update]

  #unauthenticated user do
  unauthenticated :user do
    root to: "pages#home", as: "home"
  end

  #authenticate user do
  root to: "pages#dashboard", as:"dashboard"

  # get 'users/:id/dashboard', to: 'users#dashboard', as: :user_dashboard

end
