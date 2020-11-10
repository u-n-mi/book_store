Rails.application.routes.draw do
  get 'books', to: "books#index"
  get 'books/order'
  get 'orders/index', to: "orders#index"
  devise_for :users
  root to: 'pages#home'
  resources :books, only: [:new, :create, :show]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
