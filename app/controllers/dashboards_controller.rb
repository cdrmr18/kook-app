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

    skip_authorization
  end
end
