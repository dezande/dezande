require 'test_helper'

class HomepageControllerTest < ActionController::TestCase
  test "Should get index" do
    get :index
    assert_response :success
    assert_template :index
    assert_template layout: "layouts/application"
    assert_template partial: "_career"
    assert_template partial: "_hobbies"
    assert_template partial: "_whoiam"
  end
end
