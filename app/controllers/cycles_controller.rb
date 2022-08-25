class CyclesController < ApplicationController
  def index
    @cycles = Cycle.all
  end

  def show
    @cycle = Cycle.find(params[:id])
  end

  def new
    @cycle = Cycle.new
  end

  def create
    @cycle = Cycle.new(cycle_params)
    @cycle.user = current_user
    if @cycle.save
      redirect_to cycle_path(@cycle)
    else
      render :new
    end
  end

  def edit
    @cycle = Cycle.find(params[:id])
  end

  def update
    @cycle = Cycle.find(params[:id])
    @cycle.update(cycle_params)
    redirect_to cycle_path(@cycle)
  end

  def destroy
    @cycle = Cycle.find(params[:id])
    @cycle.destroy
    redirect_to root_path, status: :see_other
  end

  private

  def cycle_params
    params.require(:cycle).permit(
      :title,
      :description,
      :color,
      :general_state,
      :location,
      :price,
      :license_id,
      :brand_id,
      :model_id,
      :nb_of_owners,
      :tires_state,
      :battery_soh,
      :maintenances,
      :kilometrage,
      :release_date,
      :user_combined_range
    )
  end
end
