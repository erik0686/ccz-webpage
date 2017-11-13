class BeneficiariesController < ApplicationController
  def new
    @beneficiary = Beneficiary.new
  end

  def create
    @beneficiary = Beneficiary.new(beneficiary_params)
    if @beneficiary.save
      redirect_to beneficiaries_path
    else
      render 'new'
    end
  end

  def index
    @beneficiaries = Beneficiary.all
  end

  def show
    @beneficiary = Beneficiary.find(params[:id])
  end

  def edit
    @beneficiary = Beneficiary.find(params[:id])
  end

  def update
    @beneficiary = Beneficiary.find(params[:id])
    if @beneficiary.update(beneficiary_params)
      redirect_to @beneficiary
    else
      render 'edit'
    end
    respond_to do |format|
      format.js
      format.html
    end
  end

  def destroy
    @beneficiary = Beneficiary.find(params[:id])
    @beneficiary.destroy
    redirect_to beneficiaries_path
  end

  private

  def beneficiary_params
    params.require(:beneficiary).permit(:first_name, :last_name, :age, :weight, :height, :body_mass_index)
  end
end
