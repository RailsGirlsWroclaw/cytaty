Rails.application.routes.draw do
  resources :quotes
  get "/external-quotes", to: "quotes#external_quotes"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
