Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/about", to: "pages#about"
  get "/contact", to: "pages#contact"
  get "/home", to: "pages#home"
  get "/admin", to: "posts#admin"
  resources :posts do
    resources :reviews, only: :create
  end
end
