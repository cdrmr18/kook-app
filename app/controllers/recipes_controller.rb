class RecipesController < ApplicationController
  def index
    if params[ :query ].present?
      @recipes = Recipe.search_by_cuisine_and_name(params[ :query ])
    else
      @recipes = Recipe.all
    end
  end


  def top
    # @recipes = Recipe.joins(:recipe_reviews).where(recipe_reviews:{rating: 1})
  end


  def create
    @recipe = Recipe.new
    @recipe = Recipe.create(recipe_params)
    chef = Chef.new(user_id: current_user.id, cuisine: @recipe.cuisine)
    @recipe.chef = chef
    @recipe.save

    if @recipe.save
      redirect_to recipe_path(@recipe)
    else
      render :new
    end

  end

  def new
    @recipe = Recipe.new
  end

  def edit
  end

  def show
    # recipes/:id
    @recipe = Recipe.find(params[:id])

    @measurement = Measurement.new

    @chef_name = "#{@recipe.chef.user.first_name + " " + @recipe.chef.user.last_name}"
  end

  def update
  end

  def destroy
  end






  private

  def recipe_params
    params.require(:recipe).permit(:name, :description, :cuisine, :cook_time, :price, :photo)
  end
end
