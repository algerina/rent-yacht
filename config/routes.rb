Rails.application.routes.draw do
  get '/current_user', to: 'current_user#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  devise_for :users, path: '', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    registration: 'signup'
  },
  controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  
  namespace :v1, defaults: { format: 'json' } do
    resources :reservations, only: [:index, :show, :create, :destroy]
    resources :yachts, only: [:index, :show, :create, :destroy]
  end 
end
