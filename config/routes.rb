Rails.application.routes.draw do
  resources :foods

  root to: "foods#index", as: "foods_index"

  get "/:id", to: "foods#show", as: "foods_show"
  
  get "/:id/edit", to: "foods#edit", as: "foods_edit"
  
  patch "/:id/update", to: "foods#update", as: "foods_update"
  
  delete "/foods/:id/delete", to: "foods#destroy", as: "foods_delete"
end
