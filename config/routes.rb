Rails.application.routes.draw do

  
  namespace 'api' do
    namespace 'v1' do
      post '/login', to: 'sessions#create'
      delete '/logout', to: 'sessions#destroy'
      get '/logged_in', to: 'sessions#is_logged_in?'
      get '/random', to: 'studios#random'
      resources :users, only: [:create, :index, :show, :update] do 
        resources :reservations, only: [:index]
      end
      resources :studios, only: [:index, :show] 
      resources :reservations, only: [:index, :show, :create, :destroy]
    end
  end
end
