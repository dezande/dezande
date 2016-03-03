require "test_helper"

class Templates::PagesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_response :success
  end

  def test_skills
    get :skills
    assert_response :success
  end

  def test_skills_new
    get :skills_new
    assert_response :success
  end

end
