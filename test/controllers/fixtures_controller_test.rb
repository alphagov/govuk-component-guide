require 'test_helper'

class FixturesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index, component_id: 'title'
    assert_response :success
  end

  test "should get show" do
    get :show, component_id: 'title', id: 'default'
    assert_response :success
  end
end
