require 'test_helper'

class StorefrontControllerTest < ActionController::TestCase
  test "should get all_items" do
    get :all_items
    assert_response :success
  end

end
