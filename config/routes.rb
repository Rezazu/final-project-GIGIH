Rails.application.routes.draw do
  resources :foods
  resources :orders
  resource :order_details
  
  #root
  root to: "foods#index", 
    as: "foods_index"

  #FOOD MODEL
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
  delete "/foods/:id", 
    to: "foods#destroy", 
    as: "foods_delete"

  #ORDERS MODEL
  get "/orders",
    to: "orders#index",
    as: "orders_index"

  delete "/orders/:id", 
    to: "orders#destroy", 
    as: "orders_delete"
  

  #ORDERS DETAIL MODEL

  get "/orders/:order_id",
    to: "order_detail#index",
    as: "detail_index"
  
end
