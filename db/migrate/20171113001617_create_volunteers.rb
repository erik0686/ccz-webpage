class CreateVolunteers < ActiveRecord::Migration[5.1]
  def change
    create_table :volunteers do |t|
      t.string :name
      t.integer :age
      t.integer :semester
      t.string :mail
      t.string :id_number

      t.timestamps
    end
  end
end
