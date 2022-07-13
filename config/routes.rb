Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
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
    resources :reservations, only: %i[index show create destroy]
    resources :yachts, only: %i[index show create destroy]
  end
end
