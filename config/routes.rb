Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      mount_devise_token_auth_for 'Customer', at: 'customer', controllers: {
        registrations: 'api/v1/customer/registrations'
      }
      namespace :customer do
        resources :sessions, only: %i[index]
      end
      resources :musics, only: [:index, :create, :show, :update]
      get "search" => "musics#search"

      mount_devise_token_auth_for 'Admin', at: 'admin', controllers: {
        registrations: 'api/v1/admin/registrations'
      }
      namespace :admin do
        resources :sessions, only: %i[index]
      end
    end
  end

  namespace :native_api do
    namespace :v1 do
      mount_devise_token_auth_for 'Customer', at: 'customer', controllers: {
        registrations: 'api/v1/customer/registrations'
      }
      namespace :customer do
        resources :sessions, only: %i[index]
      end
      resources :team_musics, only: [:index, :show]
      get "search" => "team_musics#search"
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
