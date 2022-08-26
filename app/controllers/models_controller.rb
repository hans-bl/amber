class ModelsController < ApplicationController
  def show
    @model = Model.find(params[:id])
  end

  def new
    @model = Model.new
  end

  def create
    @model = Model.new(model_params)
    if @model.save
      redirect_to model_path(@model)
    else
      render :new
    end
  end

  def edit
    @model = Model.find(params[:id])
  end

  def update
    @model = Model.find(params[:id])
    if @model.update(model_params)
      redirect_to model_path(@model)
    else
      render :edit
    end
  end

  def destroy
    @model = Model.find(params[:id])
    @model.delete
    redirect_to cycles_path, status: :see_other
  end

  private

  def model_params
    params.require(:model).permit(
      :title,
      :description
    )
  end
end
