class AddSponsorToBeneficiary < ActiveRecord::Migration[5.1]
  def change
  	add_column :beneficiaries, :sponsor_id, :integer, foreign_key: true, index: true
  end
end
