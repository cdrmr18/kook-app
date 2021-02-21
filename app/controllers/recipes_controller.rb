class RecipesController < ApplicationController
  def index
    # /recipes
    @recipes = Recipe.all
  end

  def create
  end

  def new
  end

  def edit
  end

  def show
    # recipes/:id
    @recipe = Recipe.find(params[:id])
  end

  def update
  end

  def destroy
  end

  private

  def recipe_params
  end
end
