class CreateDirectors < ActiveRecord::Migration[5.1]
  def change
    create_table :directors do |t|
      t.string :name
      t.string :career
      t.integer :semester
      t.string :status
      t.string :mail
      t.date :startdate
      t.date :enddate

      t.timestamps
    end
  end
end
