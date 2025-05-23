Rails.application.routes.draw do
  get 'sessions/new'
  resources :contacts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
root to: "static_pages#index"

get 'sobre', to:'static_pages#sobre'
get 'contato', to:'static_pages#contato'
get 'entrar', to: 'sessions#new'
post 'entrar', to: 'sessions#create'
delete 'sair', to: 'sessions#destroy'


resources :contacts
resources :users, only: [:new, :create, :show]  #eu poderia passar %i[new create show ]

end


