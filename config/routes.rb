Rails.application.routes.draw do
  devise_for :users
  resources :notes
  resources :users

  root to: "homes#landing"

  get 'permission', to: "notes#permission"
  post 'give_permission', to: "notes#give_permission"
  get 'sharing', to: "notes#sharing"
  get 'shared_with', to: "notes#shared_with"
  delete 'permission_denied', to: 'notes#permission_denied'

  get 'tags', to: "notes#index"
  get 'landing', to: "homes#landing"

  mount ActionCable.server => '/cable'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
