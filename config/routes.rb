Rails.application.routes.draw do
  get 'order_detail/create'
  get 'order_detail/update'
  get 'order_detail/destroy'
  get 'order_detail/show'
  get 'orders/create'
  get 'orders/update'
  get 'orders/destroy'
  get 'orders/show'
  resources :foods
  
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
  
end
