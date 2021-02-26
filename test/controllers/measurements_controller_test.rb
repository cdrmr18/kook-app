require 'test_helper'

class MeasurementsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get measurements_new_url
    assert_response :success
  end

  test "should get create" do
    get measurements_create_url
    assert_response :success
  end

end
