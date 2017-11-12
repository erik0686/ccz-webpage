class ProductsController < ApplicationController
	def new
		@product = Product.new
	end

	def create
		@product = Product.new(product_params)
		if @product.save
			redirect_to products_path
		else
			render 'new'
		end
	end

	def index
		@products = Product.all
	end

	def show
		@products = Product.find(params[:id])
	end

	def edit
		@products = Product.find(params[:id]) 
	end

	def update
		@product = Product.find(params[:id])
		if @product.update(product_params)
			redirect_to @product
		else
			render 'edit'
		end
	end

	def destroy
		@product = Product.find(params[:id])
		@product.destroy
		redirect_to Products_path
	end

	def change_status2
		@product = Product.find(params[:product_id])
		@product.change_status 
	end

	private

	def product_params
		params.require(:product).permit(:name)
	end
end
