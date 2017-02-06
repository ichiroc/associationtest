Rails.application.routes.draw do
  root to: "groups#index"
  resources :groups do
    resources :users do
      resources :posts
    end
  end

  resources :users
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
