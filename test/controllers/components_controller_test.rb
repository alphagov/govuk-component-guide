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

  test "should fail to get show" do
    # This component does not exist and should return a 404 error
    get :show, id: 'test'
    assert_response :missing
  end
end
