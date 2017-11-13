class ChangeStatusDefault < ActiveRecord::Migration[5.1]
  def change
    change_column_default(:projects, :status, 'Pending')
  end
end
