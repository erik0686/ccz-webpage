class RelateProductAndMaterial < ActiveRecord::Migration[5.1]
  def change
    add_column :product_materials, :product_id, :integer, foreign_key: true, index: true
    add_column :product_materials, :material_id, :integer, foreign_key: true, index: true
  end
end
