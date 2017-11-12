class Product < ApplicationRecord
	has_many :product_materials
	has_many :materials, through: :product_materials
end
