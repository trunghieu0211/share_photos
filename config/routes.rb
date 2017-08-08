Rails.application.routes.draw do
  root "static_pages#home"

  resources :photos
  get "/home", to: "photos#index"
end
