Rails.application.routes.draw do
  get 'blog', to: 'posts#index'
  resources :posts

  devise_for :users
  
  root 'pages#index'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
