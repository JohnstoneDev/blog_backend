Rails.application.routes.draw do
  resources :posts
  resources :topics, only: %i[create]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get '/', to: "application#index"

end
