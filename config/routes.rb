Rails.application.routes.draw do
  get 'books/index'
  resources :genres
  resources :books do
    resources :readers
  end
  resources :readers
  root 'books#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
