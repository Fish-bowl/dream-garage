require 'test_helper'

class StaticCarsControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get static_cars_home_url
    assert_response :success
  end

  test "should get about" do
    get static_cars_about_url
    assert_response :success
  end

end
