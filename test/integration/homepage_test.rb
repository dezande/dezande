require 'test_helper'

class HomepageTest < ActionDispatch::IntegrationTest
  test "get homepage" do
      get "/"
      assert_response :success
  end
end
