Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :reviews, only: [:index, :update, :destory, :create]
      resources :recipes, only: [:index, :create, :update, :destroy]
      resources :users, only: [:index, :create, :show, :destroy]

      resources :matches, only:[:index, :create, :show, :destroy]

      post '/signup', to: 'users#create'
      post '/login', to: 'auth#create'
      get '/current_user', to: 'auth#current_profile'
    end
  end



end
