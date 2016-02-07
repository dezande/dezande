require 'test_helper'

class ContactControllerTest < ActionController::TestCase
  test "Should get index" do
    get :index
    assert_response :success
  end
end
