require 'test_helper'

class UserControllerTest < ActionController::TestCase
  test "should get log" do
    get :log
    assert_response :success
  end

end
