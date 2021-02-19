class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
    # finding user to use attached photo for chef photo
    @user = User.find(Chef.find(Recipe.first.chef.user_id).user_id).photo
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
