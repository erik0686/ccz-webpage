class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :name
      t.string :last_name
      t.string :student_no
      t.string :degree
      t.float :hours_given
      t.date :end_of_service
      t.date :start_of_service

      t.timestamps
    end
  end
end
