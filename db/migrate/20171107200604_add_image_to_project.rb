class AddImageToProject < ActiveRecord::Migration[5.1]
  def change
    add_attachment :projects, :image
  end
end
