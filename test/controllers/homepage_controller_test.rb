require 'test_helper'

class HomepageControllerTest < ActionController::TestCase
  test "Should get index" do
    get :index
    assert_response :success
  end
end
