Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :favorites
      # delete '/remove/:res_id' => 'favorites#remove'

      resources :favorites do
        collection do
          delete '/remove/:user_id/:res_id' => 'favorites#remove'
        end
      end



      resources :users
          post 'login', to: 'users#login'
    end
  end
end
