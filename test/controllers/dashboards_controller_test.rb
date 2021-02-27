require 'test_helper'

class DashboardsControllerTest < ActionDispatch::IntegrationTest
  test "should get chef_dashboard" do
    get dashboards_chef_dashboard_url
    assert_response :success
  end

end
