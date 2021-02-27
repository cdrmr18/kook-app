class MeasurementsController < ApplicationController
  def new
    @measurement = Measurement.new
    @recipe = Recipe.find(params[:recipe_id])
  end

  def create
    @recipe = Recipe.find(params[:recipe_id])
    @measurement = Measurement.new(measurement_params)
    @measurement.recipe = @recipe

    if @measurement.save
      redirect_to recipe_path(@recipe)
    else
      render 'recipes/show'
    end
  end

  private

  def measurement_params
    params.require(:measurement).permit(:description, :ingredient)
  end
end
