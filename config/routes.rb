
Rails.application.routes.draw do
  namespace :api, defaults: {format: :json} do
    resources :user, only: [:create]
    resource :session, only: [:create, :destroy, :show]
    resources :drinks, only:[:index, :create, :show]
  end

  root "static_pages#root"
end