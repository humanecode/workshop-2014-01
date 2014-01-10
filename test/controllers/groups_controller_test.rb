require "test_helper"

class GroupsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_response :success
  end

  def test_show
    get :show, id: groups(:payroll)
    assert_response :success
  end
end
