class Product < ApplicationRecord
	has_many :product_materials, dependent: :destroy
	has_many :materials, through: :product_materials

	accepts_nested_attributes_for :product_materials, allow_destroy: true, reject_if: :all_blank
end
