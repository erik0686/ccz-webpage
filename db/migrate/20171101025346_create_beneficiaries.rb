class CreateBeneficiaries < ActiveRecord::Migration[5.1]
  def change
    create_table :beneficiaries do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.float :height
      t.float :weight
      t.float :body_mass_index

      t.timestamps
    end
  end
end
