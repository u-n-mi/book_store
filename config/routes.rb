Rails.application.routes.draw do
  # get 'books', to: "books#index"
  # get 'books/order'
  # get 'orders/index', to: "orders#index"
  devise_for :users
  root to: 'pages#home'
  resources :books do
    resources :orders, only: [:new,:create,:index] do
      resources :payments, only: [:new,:create,:show]
     # get 'payments/new', to: "payments#new" # --> create a new payment
    # get 'orders/new', to: "orders#new"  #---> this is the page with the part the sell and the personal details!
    # post 'orders/new', to: "orders#create"  #--> This is "ordering" a new book!
    end
  end

  # get 'books/new', to: "books#new"  # --> This is the form to "selling" a new book!
  # post 'books/new', to: "books#create" #--> This is the actually sale (the button, show the book to sell)!
  # get 'books/:id/edit', to: "books#edit" #--> This is edit the book that is for sale!
  # patch 'books/:id/edit', to: "books#update" # --> this is when you press the button and update!
  # delete 'books/:id/destroy', to: "books#destroy" # --> this is deleting the sale page!
  # get 'messages/new', to: "messages#new" # --> Create e a new message
  # post 'messages/new', to: "messages#create" # --> post a new message
  # get 'payments/new', to: "payments#new" # --> create a new payment
  # post 'payments/new', to: "payments#create" #-->post/send the payment
  # get 'dashboard', to: "pages#dashboard"


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
