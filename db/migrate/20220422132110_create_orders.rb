class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string :id
      t.string :email
      t.string :detail_id
      t.string :total_price
      t.string :date
      t.string :status

      t.timestamps
    end
  end
end
