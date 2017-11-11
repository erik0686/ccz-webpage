class AddTopicToAnnouncement < ActiveRecord::Migration[5.1]
  def change
    add_column :announcements, :topic, :string, null: false
  end
end
