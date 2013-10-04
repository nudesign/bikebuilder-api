Bikebuilder::Application.routes.draw do

  resources :builds
  get "builds/new/:build_type_id", to: "builds#new", as: "new_build_with_type"

  resources :components

end
