Rails.application.routes.draw do
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  namespace :v1, defaults: { format: 'json' } do
    resources :reservations, only: [:index, :show, :create, :destroy]
  end
end
