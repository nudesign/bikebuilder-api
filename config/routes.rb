Bikebuilder::Application.routes.draw do

  get "facebook_test/index", as: "test_index"
  get "auth/:provider/callback", to: "sessions#create"
  get "auth/failure", to: redirect("/facebook_test/index.html")
  get "signout", to: "sessions#destroy", as: "signout"


  resources :builds
  resources :components
  resources :manufacturers

  resources :build_types
  resources :component_types

  root "builds#index"

end
