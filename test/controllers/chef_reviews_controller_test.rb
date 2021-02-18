require 'test_helper'

class ChefReviewsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get chef_reviews_create_url
    assert_response :success
  end

  test "should get new" do
    get chef_reviews_new_url
    assert_response :success
  end

end
