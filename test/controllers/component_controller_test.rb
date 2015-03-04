require 'test_helper'

class ComponentControllerTest < ActionController::TestCase
  test "should get list" do
    get :list
    assert_response :success
  end

  test "should get show" do
    get :show, id: 'title'
    assert_response :success
  end

end
