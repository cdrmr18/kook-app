class DashboardsController < ApplicationController
  def chef_dashboard
    @chef = Chef.find(current_user.id)
    @bookings = @chef.bookings
  end
end
