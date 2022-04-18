json.extract! menu, :id, :name, :category, :description, :price, :created_at, :updated_at
json.url menu_url(menu, format: :json)
