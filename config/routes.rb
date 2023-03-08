Rails.application.routes.draw do
  devise_for :users


  root to: "pages#home"

  get "/design", to: "pages#design"
  get "/basket", to: "pages#basket"

  get "/styles", to: "presets#styles"

  get "/presets", to: "presets#presets"
  get "/payment", to: "pages#payment"
end
