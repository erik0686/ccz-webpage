class Material < ApplicationRecord
	has_many :product_materials
	has_many :products, through: :product_materials
end
