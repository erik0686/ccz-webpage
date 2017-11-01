class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :status
      t.string :creator_email
      t.string :creator_firstname
      t.string :creator_lastname

      t.timestamps
    end
  end
end
