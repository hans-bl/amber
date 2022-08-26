class BrandsController < ApplicationController
  def show
    @brand = Brand.find(params[:id])
  end

  def new
    @brand = Brand.new
  end

  def create
    @brand = Brand.new(brand_params)
    if @brand.save
      redirect_to brand_path(@brand)
    else
      render :new
    end
  end

  def edit
    @brand = Brand.find(params[:id])
  end

  def update
    @brand = Brand.find(params[:id])
    if @brand.update(brand_params)
      redirect_to brand_path(@brand)
    else
      render :edit
    end
  end

  def destroy
    @brand = Brand.find(params[:id])
    @brand.delete
    redirect_to cycles_path, status: :see_other
  end

  private

  def brand_params
    params.require(:brand).permit(
      :title,
      :description
    )
  end
end
