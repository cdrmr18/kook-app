class MeasurementsController < ApplicationController
  before_action :set_recipe, only: [:new, :create, :edit, :update]
  before_action :set_measurement, only: [:edit, :update, :destroy]

  def new
    @measurement = Measurement.new
    authorize @measurement
  end

  def create
    @measurement = Measurement.new(measurement_params)
    @measurement.recipe = @recipe
    authorize @measurement

    if @measurement.save
      redirect_to recipe_path(@recipe)
    else
      render 'recipes/show'
    end
  end

  def edit
  end

  def update
    @measurement.update(measurement_params)
    redirect_to recipe_path(@recipe)
  end

  def destroy
    @measurement.destroy
    @recipe = @measurement.recipe
    redirect_to recipe_path(@recipe)
  end

  private

  def set_measurement
    @measurement = Measurement.find(params[:id])
    authorize @measurement
  end

  def set_recipe
    @recipe = Recipe.find(params[:recipe_id])
  end

  def measurement_params
    params.require(:measurement).permit(:description, :ingredient)
  end
end
