Rails.application.routes.draw do
  resources :dog_houses do
    resources :trips, only: [:create]
  end

  resources :dogs # RESTFul Routes

  get "/get-current-dog" => "sessions#get_current_dog"
  post "/login" => "sessions#login"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
