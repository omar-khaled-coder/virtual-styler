Rails.application.routes.draw do
  devise_for :users


  root to: "pages#home"

  get "/design", to: "pages#design"
  get "/basket", to: "pages#basket"
  get "/paymentdone", to: "pages#paymentdone"

  get "/styles", to: "presets#styles"
  get "/presets", to: "presets#presets"

  resources :customs, only: [:index, :show, :new, :create]
  get "customs/dashboard", to: "customs#dashboard"

end
