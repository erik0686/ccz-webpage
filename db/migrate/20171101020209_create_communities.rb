class CreateCommunities < ActiveRecord::Migration[5.1]
  def change
    create_table :communities do |t|
      t.string :name
      t.integer :population

      t.timestamps
    end
  end
end
