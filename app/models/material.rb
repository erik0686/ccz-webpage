class Material < ApplicationRecord
	has_many :product_materials, dependent: :destroy
	has_many :products, through: :product_materials
end
