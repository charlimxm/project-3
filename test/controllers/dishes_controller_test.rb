require 'test_helper'

class DishesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dishes_index_url
    assert_response :success
  end

  test "should get show" do
    get dishes_show_url
    assert_response :success
  end

end
