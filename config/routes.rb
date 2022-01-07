Rails.application.routes.draw do
  root "produtos#index"

  resources :produtos
end