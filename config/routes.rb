Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # root to: 'posts#index'
  mount Blog::API => '/'

  resources :posts#, only: %i[index show]
  get '/users' => 'users#index'

end
