Rails.application.routes.draw do
  root to: 'homes#top'
  get 'books/:id' => 'books#show', as: 'book'
  delete 'books/:id' => 'books#destroy', as: 'destroy_book'
  patch 'books/:id' => 'books#update', as: 'update_book'
  resources :books
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end