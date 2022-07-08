Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  namespace :v1, defaults: { format: 'json' } do
    resources :reservations, only: [:index, :show, :create, :destroy]
    resources :yachts, only: [:index, :show, :create, :destroy]
    resources :users
    
  end
end
