require 'test_helper'

class AnalystControllerTest < ActionController::TestCase
  test "should get active" do
    get :active
    assert_response :success
  end

  test "should get inactive" do
    get :inactive
    assert_response :success
  end

end
