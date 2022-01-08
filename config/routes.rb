Rails.application.routes.draw do
  root "produtos#index"

  resources :produtos do
    resources :comentarios
  end
end