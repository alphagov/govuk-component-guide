require 'test_helper'

class FixturesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index, params: { component_id: 'title' }
    assert_response :success
  end

  test "should get show" do
    get :show, params: { component_id: 'title', id: 'default' }
    assert_response :success
  end

  test "should fail to get show" do
    # This fixture does not exist and should return a 404 error
    get :show, params: { component_id: 'title', id: 'test' }
    assert_response :missing
  end
end
