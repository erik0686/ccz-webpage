class AddNullFalseToColumns < ActiveRecord::Migration[5.1]
  def change
  	change_column_default :projects, :status, "open"
  	change_column_null :projects, :creator_email, false
  	change_column_null :projects, :creator_firstname, false
  	change_column_null :projects, :creator_lastname, false
  	change_column_null :projects, :description, false
  end
end
