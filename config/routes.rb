Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'members#welcome'

  resources :members
  resources :books
  resources :lends
  # get '/lends', to: 'lends#index', as: 'lends'
  # get '/lend/new', to: 'lends#new', as: 'new_lend'
  # post '/lends/:id', to: 'lends#create', as: 'show_lend'
  # get '/lend/show', to: 'lends#show', as: 'show_lend'
  # patch '/lending/:id/return', to: 'lends#update', as: 'return'

end
