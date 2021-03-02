Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root to: 'posts#index'
  mount Blog::API => '/'
  resources :posts, only: %i[index show]
  get '/users' => 'users#index'
end
