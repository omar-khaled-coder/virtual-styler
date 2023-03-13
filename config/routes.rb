Rails.application.routes.draw do
  devise_for :users


  root to: "pages#home"

  get "/design", to: "pages#design"
  get "/basket", to: "pages#basket"
  get "/paymentdone", to: "pages#paymentdone"

  get "/styles", to: "presets#styles"
  get "/presets", to: "presets#presets"







  resources :customs, only: [:index, :show, :new, :create]
  get "/user_dashboard", to: "customs#user_dashboard"


  # resources :designers do
  #   resources :customs, only: [:index, :new, :create]
  # end

  # resources :customs, only: [:show]
  get "customs/dashboard", to: "customs#dashboard"

end
