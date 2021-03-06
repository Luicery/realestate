Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/login" => "session#new"
  post "/login" => "session#create"
  delete "/login" => "session#destroy"
  resources :properties
  resources :users
  resources :agents
  resources :watches
  resources :rents
end
