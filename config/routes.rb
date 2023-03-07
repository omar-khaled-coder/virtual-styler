Rails.application.routes.draw do
  devise_for :users


  root to: "pages#home"

  get "/design", to: "pages#design"
  get "/basket", to: "pages#basket"

  get "/styles", to: "presets#styles"
  post "/styles", to: "presets#generate_preset"
  get "/presets", to: "presets#presets"

end
