Rails.application.routes.draw do
  root 'pages#home'
  
  use_doorkeeper
  devise_for :users
  resources :books

  namespace :api do
    namespace :v1 do
        scope :users, module: :users do
          post '/', to: 'registration#create', as: :user_registration
        end
        resources :books

        namespace :android do
          resources :books
        end
    end
  end

  scope :api do
      scope :v1 do
          use_doorkeeper do
              skip_controllers :authorizations, :applications, :authorized_applications
          end
      end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
