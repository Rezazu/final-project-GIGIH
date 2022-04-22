class CreateOrderDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :order_details do |t|
      t.string :orders_id
      t.string :item_id
      t.string :item_quantity
      t.string :price

      t.timestamps
    end
  end
end
