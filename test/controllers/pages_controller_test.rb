require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get Index" do
    get pages_Index_url
    assert_response :success
  end

  test "should get Home" do
    get pages_Home_url
    assert_response :success
  end

  test "should get Profile" do
    get pages_Profile_url
    assert_response :success
  end

  test "should get Explore" do
    get pages_Explore_url
    assert_response :success
  end

end
