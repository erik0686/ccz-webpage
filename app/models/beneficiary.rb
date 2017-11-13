class Beneficiary < ApplicationRecord
  belongs_to :community
  belongs_to :sponsor
end
