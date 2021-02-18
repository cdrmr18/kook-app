require 'test_helper'

class RecipeReviewsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get recipe_reviews_create_url
    assert_response :success
  end

  test "should get new" do
    get recipe_reviews_new_url
    assert_response :success
  end

end
