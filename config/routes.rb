Rails.application.routes.draw do
  get 'books', to: "books#index"
  get 'books/order'
  get 'orders/index', to: "orders#index"
  devise_for :users
  root to: 'pages#home'
  resources :books, only: [:new, :create, :show]

  get 'books/:id', to: "books#show"
  #get 'orders/new', to: "orders#new"
  #post 'orders/new', to: "orders#create"
  #get 'books/new', to: "books#new"
  #post 'books/new', to: "books#create"
  #get 'books/id/edit', to: "books#edit"
  #patch 'books/id/edit', to: "books#uptade"
  #delete 'books/id/destroy', to: "books#destroy"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
