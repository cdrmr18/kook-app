class PagesController < ApplicationController
  
  def home
    @top_recipes = Recipe.joins(:recipe_reviews).where(recipe_reviews:{rating: 4})
  end

  
  
  
end
