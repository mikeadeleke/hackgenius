HackerGenius::Application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  get 'auth/:provider/callback', to: 'sessions#create', as: "signin"
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'
  
  root 'tracks#index'
  resources :tracks do
    resources :annotations
  end
  
  resources :new
end
