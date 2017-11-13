class ProductMaterialsController < ApplicationController
  before_action :find_product

  def edit
    @product_material = @product.product_materials.find(params[:id])
  end

  def update
    @product_material = @product.product_materials.find(params[:id])
    @material = Material.find(@product_material.material_id)

    return unless @product_material.update(product_material_params)
    render json: @product_material
  end

  def create
    @product_material = @product.product_materials.create(material_id: material_id, amount: 0.0)
  end

  def destroy
    @product_material = @product.product_materials.find(params[:id])
    @product_material.destroy
  end

  private

  def product_material_params
    params.require(:product_material).permit(:product_id, :material_id, :amount)
  end

  def find_product
    @product = Product.find(params[:product_id])
  end

  def material_id
    params.permit(:material_id)
    params[:material_id]
  end
end
