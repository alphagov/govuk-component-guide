require 'test_helper'

class ComponentsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get show" do
    get :show, id: 'title'
    assert_response :success
  end
end
