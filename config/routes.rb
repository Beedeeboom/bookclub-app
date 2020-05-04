Rails.application.routes.draw do
  devise_for :users
  get 'books/new'
  post 'books', to: 'books#create'

  root to: "books#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
