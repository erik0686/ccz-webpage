class RemoveImageFromProject < ActiveRecord::Migration[5.1]
  def change
    remove_attachment :projects, :image
    add_attachment :projects, :avatar
  end
end
