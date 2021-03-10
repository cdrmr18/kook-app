class DashboardsController < ApplicationController
  def chef_dashboard
    @chef = current_user.chef
    @bookings = @chef.bookings
    @recipes = @chef.recipes

    skip_authorization
  end

  def user_dashboard
    @user = current_user
    @bookings = @user.bookings
    @favorite_recipes = current_user.favorited_by_type('Recipe')
    skip_authorization
  end
end
