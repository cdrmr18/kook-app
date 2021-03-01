class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :update, :edit, :destroy]

  def top
    @recipes = Recipe.joins(:recipe_reviews).where(recipe_reviews:{rating: 1})
  end

  def index
    if params[ :query ].present?
      @recipes = Recipe.search_by_cuisine_and_name(params[ :query ])
    else
      @recipes = Recipe.all
    end
  end

  def show
    # needed to add ingredient and measurements in recipe show page
    @measurement = Measurement.new
    # chef name to display link to chef
    @chef_name = "#{@recipe.chef.user.first_name + " " + @recipe.chef.user.last_name}"
  end

  def new
    @recipe = Recipe.new
    authorize @recipe
  end

  def create
    @recipe = Recipe.new
    @recipe = Recipe.create(recipe_params)
    # creating chef instance to link recipe chef to new recipe by current user
    chef = Chef.new(user_id: current_user.id, cuisine: @recipe.cuisine)
    @recipe.chef = chef
    authorize @recipe

    if @recipe.save
      redirect_to recipe_path(@recipe)
    else
      render :new
    end

  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_recipe
     # recipes/:id
    @recipe = Recipe.find(params[:id])
    authorize @recipe
  end

  def recipe_params
    params.require(:recipe).permit(:name, :description, :cuisine, :cook_time, :price, :photo)
  end
end
