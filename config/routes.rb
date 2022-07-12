Rails.application.routes.draw do
  devise_for :users

  use_doorkeeper do
    skip_controllers :authorizations, :applications, :authorized_applications
    controllers tokens: 'custom_tokens'
  end

  namespace :api do
    namespace :v1 do
      resources :users, only: %i[create]
    end
  end
end
