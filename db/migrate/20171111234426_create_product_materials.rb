class CreateProductMaterials < ActiveRecord::Migration[5.1]
  def change
    create_table :product_materials do |t|
      t.float :amount

      t.timestamps
    end
  end
end
