Rails.application.routes.draw do
  get 'books', to: "books#index"
  get 'books/order'
  get 'orders/index', to: "orders#index"
  devise_for :users
  root to: 'pages#home'
  resources :books, only: [:new, :create, :show]

  get 'orders/new', to: "orders#new"  #---> this is the page with the part the sell and the personal details!
  post 'orders/new', to: "orders#create"  #--> This is "ordering" a new book!
  get 'books/new', to: "books#new"  # --> This is the form to "selling" a new book!
  post 'books/new', to: "books#create" #--> This is the actually sale (the button, show the book to sell)!
  get 'books/:id/edit', to: "books#edit" #--> This is edit the book that is for sale!
  patch 'books/:id/edit', to: "books#update" # --> this is when you press the button and update!
  delete 'books/:id/destroy', to: "books#destroy" # --> this is deleting the sale page!
  #get 'books/user/:id', to: "books#create"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
