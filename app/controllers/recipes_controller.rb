class RecipesController < ApplicationController
  def index
    if params[ :query ].present?
      @recipes = Recipe.search_by_cuisine_and_name(params[ :query ])
    else
      @recipes = Recipe.all
    end

  end

  def create
    @recipe = Recipe.new(recipe_params)

  end

  def new
    @recipe = Recipe.new
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
    params.requre(:recipe).permit(:name, :description, :ingredients, :cuisine, :cook_time, :price, photos: [])
  end
end
