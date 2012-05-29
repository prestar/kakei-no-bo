require 'test_helper'

class StatusControllerTest < ActionController::TestCase
  test "should get months" do
    get :months
    assert_response :success
  end

  test "should get years" do
    get :years
    assert_response :success
  end

end
