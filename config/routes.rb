Rails.application.routes.draw do
  match '/users',   to: 'users#index',   via: 'get'

  devise_for :users
    resources :posts
    root 'posts#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
