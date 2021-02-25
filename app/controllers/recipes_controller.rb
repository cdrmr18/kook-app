class RecipesController < ApplicationController
  def index
    if params[ :query ].present?
      @recipes = Recipe.search_by_cuisine_and_name(params[ :query ])
    else 
      @recipes = Recipe.all
    end
  end

    
  def top
    @recipes = Recipe.joins(:recipe_reviews).where(recipe_reviews:{rating: 1})
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
