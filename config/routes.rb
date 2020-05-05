Rails.application.routes.draw do
  devise_for :users

  get 'book_list', to: 'book_lists#index'
  get 'books/new'
  get 'books/:id', to: 'books#show', as: 'book'
  post 'books', to: 'books#create'

  root to: "books#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
