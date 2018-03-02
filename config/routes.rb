
Rails.application.routes.draw do
  namespace :api, defaults: {format: :json} do
    resources :user, only: [:create]
    resource :session, only: [:create, :destroy, :show]
    resources :reviews, only: [:create, :show, :update, :destroy]
    resources :drinks, only: [:create, :show] do 
      resources :reviews, only: [:index]
    end 
    resources :menus, only: [:create] do
      resources :drinks, only: [:index]
    end 
  end

  root "static_pages#root"
end