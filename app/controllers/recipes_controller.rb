class RecipesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_recipe, only: [:show, :update, :edit, :destroy]

  def top
    @recipes = Recipe.joins(:recipe_reviews).where(recipe_reviews:{rating: 1})
  end

  def index
    if params[ :query ].present?
      @recipes = Recipe.search_by_cuisine_and_name(params[ :query ])
    else
      @recipes = policy_scope(Recipe)
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
    @recipe = Recipe.new(recipe_params)
    # creating chef instance to link recipe chef to new recipe by current user
    @recipe.chef = current_user.chef
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
    @recipe.update(recipe_params)
    redirect_to recipe_path(@recipe)
  end

  def destroy
    @recipe.destroy
    redirect_to chef_dashboard_path(@recipe.chef)
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
