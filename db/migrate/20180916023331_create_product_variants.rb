class CreateProductVariants < ActiveRecord::Migration
  def change
    create_table :product_variants do |t|
      t.string :title
      t.decimal :price, precision: 15 , scale: 2

      t.timestamps null: false
    end
  end
end
