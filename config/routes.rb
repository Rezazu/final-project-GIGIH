Rails.application.routes.draw do
  resources :foods

  #root
  root to: "foods#index", 
    as: "foods_index"

  # get "/items/new", to: "items#new", as: "items_new"
  # post "/items/new", to: "items#create", as: "items_create"
  
  #Show food by params
  get "/:id",
    to: "foods#show",
    as: "foods_show"
  #edit food by params
  get "/:id/edit", 
    to: "foods#edit", 
    as: "foods_edit"
  #update food by params
  patch "/:id/update", 
    to: "foods#update", 
    as: "foods_update"
  #delete food by params
  delete "/foods/:id/delete", 
    to: "foods#destroy", as: 
    "foods_delete"
end
