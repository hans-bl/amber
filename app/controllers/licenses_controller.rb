class LicensesController < ApplicationController
  def show
    @license = License.find(params[:id])
  end

  def new
    @license = License.new
  end

  def create
    @license = License.new(license_params)
    if @license.save
      redirect_to license_path(@license)
    else
      render :new
    end
  end

  def edit
    @license = License.find(params[:id])
  end

  def update
    @license = License.find(params[:id])
    if @license.update(license_params)
      redirect_to license_path(@license)
    else
      render :edit
    end
  end

  def destroy
    @license = License.find(params[:id])
    @license.delete
    redirect_to cycles_path, status: :see_other
  end

  private

  def license_params
    params.require(:license).permit(
      :title,
      :description,
      :category
    )
  end
end
