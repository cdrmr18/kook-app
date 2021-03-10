require 'test_helper'

class BookingConfirmationControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get booking_confirmation_show_url
    assert_response :success
  end

end
