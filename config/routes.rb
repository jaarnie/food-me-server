Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users
      resources :user_favourites
      resources :restaurants
    end
  end
end
