Rails.application.routes.draw do
  resources :articles, only: [:new, :show, :index, :create, :edit, :update]
end
