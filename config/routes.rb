Rails.application.routes.draw do
  resources :books
  root 'books#index'
  get 'autori-books/:id', to: 'books#librat_autori', as: 'each_book'


  get 'authors/krijo-autor', to:'authors#new', as: 'krijo_autor'
  post 'authors/create', to: 'authors#create', as: 'krijo_autor_nested'

  get 'krijo-liber-per-autorin/:id', to:'books#new_author_book', as:'krijo-per-autorin'
  post 'authors/create_own_book/:id', to:'books#krijo_author_book', as:'krijo-librin'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
