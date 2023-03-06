Rails.application.routes.draw do
  devise_for :users


  root to: "pages#home"

  get "/design", to: "pages#design"
  get "/basket", to: "pages#basket"

  post "/styles", to: "presets#styles"
  get "/presets", to: "presets#presets"

end
