class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @top_recipes = Recipe.joins(:recipe_reviews).where(recipe_reviews:{rating: 4})
    @top_chefs = Chef.joins(:chef_reviews).where(chef_reviews:{rating: 5})
  end
end
