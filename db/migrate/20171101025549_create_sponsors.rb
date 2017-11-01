class CreateSponsors < ActiveRecord::Migration[5.1]
  def change
    create_table :sponsors do |t|
      t.string :firstname
      t.string :lastname

      t.timestamps
    end
  end
end
