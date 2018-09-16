class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :first_name
      t.string :last_name
      t.decimal :sub_total, precision: 15, scale: 2

      t.timestamps null: false
    end
  end
end
