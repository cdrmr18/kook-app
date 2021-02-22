class RecipesController < ApplicationController
  def index
    if params[ :query ].present?
      @recipes = Recipe.search_by_cuisine_and_name(params[ :query ])
    else 
      @recipes = Recipe.all
    end
  end

  def create
  end

  def new
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end
end
