require 'test_helper'

class WelcomeControllerTest < ActionController::TestCase
  test "should get privacy" do
    get :privacy
    assert_response :success
  end

  test "should get tos" do
    get :tos
    assert_response :success
  end

  test "should get help" do
    get :help
    assert_response :success
  end

end
