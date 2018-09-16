class AddProductToProductVariants < ActiveRecord::Migration
  def change
    add_reference :product_variants, :product, index: true, foreign_key: true
  end
end
