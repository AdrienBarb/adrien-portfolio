Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'pages#home'

  namespace :admin do
    root to: "application#index"

    resources :projects
  end

  resources :projects




  get "contact", to: "pages#contact"
  get "me", to: "pages#me"
  get "service", to: "pages#service"
end
