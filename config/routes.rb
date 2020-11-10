Rails.application.routes.draw do
  get 'book/user'
  get 'book/order'
  devise_for :users
  root to: 'pages#home'
  resources :books, only: [:new, :create, :show]
  #
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
