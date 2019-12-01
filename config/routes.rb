Rails.application.routes.draw do
  get 'books/index'
  resources :genres
  resources :books
  root 'books#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
