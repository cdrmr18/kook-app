class MeasurementsController < ApplicationController
  def new
    @measurement = Measurement.new
    @recipe = Recipe.new
  end

  def create
    @recipe = recipe.find(params[:recipe_id])
    @measurement = Measurement.new(measurement_params)
    @measurement.recipe = @recipe

    if @measurement.save
      redirect_to recipe_path(@recipe)
    else
      render :new
    end
  end

  private

  def measurement_params
    params.require(:measurement).permit(:description, :ingredient_id)
  end
end
