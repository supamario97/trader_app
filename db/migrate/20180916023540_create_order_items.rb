class CreateOrderItems < ActiveRecord::Migration
  def change
    create_table :order_items do |t|
      t.integer :quantity, default: 0
      t.decimal :price, precision: 15, scale: 2

      t.timestamps null: false
    end
  end
end
