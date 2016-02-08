require 'test_helper'

class SkillsControllerTest < ActionController::TestCase
  test "Should get index" do
    get :index
    assert_response :success
  end
end
