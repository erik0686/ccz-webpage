class AddCommunityToBeneficiary < ActiveRecord::Migration[5.1]
  def change
    add_column :beneficiaries, :community_id, :integer, foreign_key: true, index: true
  end
end
