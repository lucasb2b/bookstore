Rails.application.routes.draw do
  resources :authors, except: [:destroy]
  resources :books, except: [:destroy]
  resources :accounts, except: [:destroy]

  delete '/accounts/:id/delete' => 'accounts#destroy', as: 'accounts_delete'
  get '/accounts/:id/delete' => 'accounts#destroy'

  delete '/authors/:id/delete' => 'authors#destroy', as: 'authors_delete'
  get '/authors/:id/delete' => 'authors#destroy'

  delete '/books/:id/delete' => 'books#destroy', as: 'books_delete'
  get '/books/:id/delete' => 'books#destroy'

  root 'authors#index' # Define a página inicial
end