Rails.application.routes.draw do
  root to: "home#show"

  #get '/auth/login', to: 'sessions#new'
  #post '/auth/login', to: 'sessions#create'
  #delete 'auth/logout', to: 'sessions#destroy'

end