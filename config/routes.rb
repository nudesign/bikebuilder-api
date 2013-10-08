Bikebuilder::Application.routes.draw do

  get "facebook_test/index", as: "test_index"
  get "auth/:provider/callback", to: "sessions#create"
  get "auth/failure", to: redirect("/facebook_test/index.html")
  get "signout", to: "sessions#destroy", as: "signout"

  resources :build_types do
    resources :builds
  end
  resources :builds
  get "builds/new/:build_type_id", to: "builds#new", as: "new_build_with_type"

  resources :components

end
