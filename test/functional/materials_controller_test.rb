require 'test_helper'

class MaterialsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should show materials" do
    get :show, id: @material
    assert_response :success
  end
end
