
Rails.application.routes.draw do
  namespace :api, defaults: {format: :json} do
    resources :user, only: [:create]
    resource :session, only: [:create, :destroy, :show]
    resources :drinks, only: [:create, :show]
    resources :menus, only: [:create] do
      resources :drinks, only: [:index]
    end 
  end

  root "static_pages#root"
end