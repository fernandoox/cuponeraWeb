require 'test_helper'

class PanelAdminControllerTest < ActionController::TestCase
  test "should get panelAdmin" do
    get :panelAdmin
    assert_response :success
  end

end
